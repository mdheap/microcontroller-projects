#include "Display.h"

using namespace digitalcave;

extern Channel channels[CHANNEL_COUNT];
static volatile uint8_t refresh_display = 0;
static volatile uint8_t reset_display = 0;

Display::Display() :
	hd44780(hd44780.FUNCTION_LINE_2 | hd44780.FUNCTION_SIZE_5x8, &PORTE, 6, &PORTE, 2, &PORTB, 7, &PORTD, 5, &PORTC, 6, &PORTC, 7),
	char_display(&this->hd44780, DISPLAY_ROWS, DISPLAY_COLS) {

	char_display.clear();
	char_display.refresh();
	
	//Set up the timer to run at F_CPU/1024 in CTC mode
	TCCR1A = 0x0;
	TCCR1B |= _BV(CS12) | _BV(CS10) | _BV(WGM12);
	
	//Set compare value to be F_CPU (with a 1024 prescaler) -- fire interrupt every half second
	OCR1A = F_CPU / 1024 / 2;
	
	//Enable compare interrupt
	TIMSK1 = _BV(OCIE1A);

	sei();
}

void Display::update(State state){
	if (!refresh_display) return;
	
	if (reset_display){
		char_display.clear();
	}
	
	reset_display = 0;
	refresh_display = 0;
	if (state.get_state() == STATE_LOCKED || state.get_state() == STATE_EDIT){
		char buffer[DISPLAY_COLS + 1];
		uint8_t channel = state.get_scroll_channel();
		if (CHANNEL_COUNT > DISPLAY_ROWS && channel > (CHANNEL_COUNT - DISPLAY_ROWS)){
			channel = (CHANNEL_COUNT - DISPLAY_ROWS);
		}
		else if (CHANNEL_COUNT < DISPLAY_ROWS){
			channel = 0;	
		}

		for(uint8_t row = 0; row < DISPLAY_ROWS && row < CHANNEL_COUNT; row++){
			double voltage = state.get_state() == STATE_LOCKED ? channels[channel].get_voltage_actual() / 1000.0 : channels[channel].get_voltage_setpoint() / 1000.0;
			double current = state.get_state() == STATE_LOCKED ? channels[channel].get_current_actual() / 1000.0 : channels[channel].get_current_setpoint() / 1000.0;

			snprintf(buffer, DISPLAY_COLS + 1, "Ch %d %+6.2fV %5.2fA   ", channel + 1, voltage, current);
			char_display.write_text(row, 0, buffer, DISPLAY_COLS);

			if (channel == (state.get_scroll_channel()) && state.get_state() == STATE_EDIT){
				char_display.write_text(row, 4, 0x7e);
				char_display.write_text(row, 19, 0x7f);
			}
			
			channel++;
		}
		
		for (uint8_t row = CHANNEL_COUNT; row < DISPLAY_ROWS; row++){
			char_display.write_text(row, 0, "                    ", DISPLAY_COLS);
		}
	}
	else if (state.get_state() == STATE_EDIT_ITEM){
		char buffer[DISPLAY_COLS + 1];
		uint8_t channel = state.get_scroll_channel();
		
		snprintf(buffer, DISPLAY_COLS + 1, "   Channel %d         ", channel + 1);
		char_display.write_text(0, 0, buffer, DISPLAY_COLS);
		
		snprintf(buffer, DISPLAY_COLS + 1, "Set  %+6.2fV %5.2fA     ", channels[channel].get_voltage_setpoint() / 1000.0, channels[channel].get_current_setpoint() / 1000.0);
		char_display.write_text(1, 0, buffer, DISPLAY_COLS);

		snprintf(buffer, DISPLAY_COLS + 1, "Actl.%+6.2fV %5.2fA     ", channels[channel].get_voltage_actual() / 1000.0, channels[channel].get_current_actual() / 1000.0);
		char_display.write_text(2, 0, buffer, DISPLAY_COLS);

		char_display.write_text(3, 0, "                    ", DISPLAY_COLS);
		
		char_display.write_text(1, 4, 0x7e);
		char_display.write_text(1, 19, 0x7f);
	}
	//TODO Add menu support here...
	
	char_display.refresh();
}

void Display::force_refresh(){
	refresh_display = 1;
}

void Display::force_reset(){
	reset_display = 1;
	refresh_display = 1;
}

EMPTY_INTERRUPT(TIMER1_COMPB_vect)
EMPTY_INTERRUPT(TIMER1_OVF_vect)
ISR(TIMER1_COMPA_vect){
	refresh_display = 1;
}