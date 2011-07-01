#include <stdio.h>
#include "main.h"

int main (void){
	timer_init(); 
	comm_init();
	control_init();
	status_init();
	status_error_init();
	battery_init();
	sei();	//We have NO_INTERRUPT_ENABLE in the Makefile, so that we only call sei() once.

	uint64_t millis = timer_millis();
	uint64_t last_millis = millis;

	//Used to send control data (throttle / pitch / roll / yaw)
	uint64_t millis_last_control = millis;
	//Used to update status
	uint64_t millis_last_status = millis;
	//Used to update battery
	uint64_t millis_last_battery = millis;	
	//Used for updating telemetry 
	double buffer[] = {0,0,0,0};
	
	uint8_t armed = 0;
	uint64_t armed_time = 0;
	
	//Controller mode state.  Modes are as follows:
	// 0: Flight mode (armed / disarmed, shows throttle, telemetry, battery, etc)
	// 1: Calibration mode (calibrate gyro + accel)
	// 2: PID mode (read / write PID values)
	// 3: Kalman mode (read / write Kalman tuning values)
	//Modes are incremented / decremented using Circle / Square buttons respectively.
	uint8_t mode = 0;
    
    //Init the text / graphics used in flight mode
    status_init_mode_flight();
    
	PORTD &= ~_BV(PIND5);		// off
	DDRD |= _BV(PIND5);			// set armed pin to output mode

	while (1){
		//Prevent the main loop from running more than every ms.
		while (millis <= last_millis){
			millis = timer_millis();
		}
		
		dt = millis - last_millis; // this is how long the last loop took; must be at least 1.
		last_millis = millis;

		protocol_poll();

		control_update();
		control_t control;
		if (armed){
			control = control_read_analog();
		}
		else {
			control.pitch = 0;
			control.roll = 0;
			control.yaw = 0;
			control.throttle = 0;
		}
		uint16_t button_state = control_button_state();
		uint16_t button_changed = control_button_state_changed();
		
		if ((button_state & POWER) && (button_changed & POWER)) { // rising edge, 0->1
			mode = 0;	//If you arm, you cancel out of any pending changes and go to flight mode.
			armed ^= 0x01;
			PORTD ^= _BV(PIND5); // toggle
			
			control_reset_throttle();
			
			if (!armed) {
				protocol_send_kill();
			}
		}
		
		if ((button_state & TELEMETRY) && (button_changed & TELEMETRY)) { // rising edge, 0->1
			protocol_send_toggle_telemetry();
		}
		
		if (armed) {
			//Update armed time
			armed_time += dt;
		
			//Send current control data every 50ms if armed.
			if ((millis - millis_last_control) > 50) {
				protocol_send_control(control);
				millis_last_control = millis;
			}
		} else {
			//Change mode if applicable
			if ((button_state & MODE_NEXT) && (button_changed & MODE_NEXT)) { // rising edge, 0->1
				mode = (mode + 1) % 4;
				
			}
			else if ((button_state & MODE_PREV) && (button_changed & MODE_PREV)) { // rising edge, 0->1
				mode = (mode - 1) % 4;
			}
		
			//Send kill data every 200ms if not armed; this will prevent a missed 
			// message from preventing the copter from not disarming for more than 200ms.
			if ((millis - millis_last_control) > 200) {
				protocol_send_kill();
				millis_last_control = millis;
			}		
		
			if (button_changed & RESET_ATTITUDE && button_state & RESET_ATTITUDE) { // rising edge, 0->1
				protocol_send_reset_attitude();
			}
			if (button_changed & CALIBRATE && button_state & CALIBRATE) { // rising edge, 0->1
				protocol_send_calibrate();
			}
		}
		
		//Update the status display
		if ((millis - millis_last_status) > 200){
			millis_last_status = millis;

			if (mode == 0){			
				//Control Battery
				status_set_control_battery_level(battery_level());
				status_error_battery(battery_level() < 0.2);
	
				//Pitch / Roll
				protocol_get_vector(buffer);
				status_set_telemetry(buffer[0], buffer[1]);
	
				//Motors
				protocol_get_motors(buffer);
				status_set_motors(buffer[0], buffer[1], buffer[2], buffer[3]);
				
				//Throttle / Armed / Time
				status_set_throttle(control.throttle, armed);
				status_set_armed_time(armed_time);
	
				//Rx / Tx
				status_set_comm_state(protocol_comm_state(PROTOCOL_COMM_TX), 
						protocol_comm_state(PROTOCOL_COMM_RX));
				protocol_clear_comm_state();
			}
			else if (mode == 1){
			
			}
			else if (mode == 2){
			
			}
			else if (mode == 3){
			
			}
		}
		
		if ((millis - millis_last_battery) > 2000){
			millis_last_battery = millis;
			
			buffer[0] = protocol_get_battery();
			status_set_pilot_battery_level(buffer[0]);
			status_error_battery(buffer[0] < 0.2 && buffer[0] >= 0);
		}
    }
}

