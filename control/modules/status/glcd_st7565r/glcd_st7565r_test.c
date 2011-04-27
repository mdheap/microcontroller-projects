#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>

#include "../status.h"


int main (void){

	status_init();	
	
	uint8_t battery_state = 0xFF;
	double pitch = 0.0;
	double roll = 0.0;
	double throttle = 0.0;
	uint8_t armed = 0x1;
	
	uint32_t time = 123456;
	
	_delay_ms(500);
	
	while(1){
		status_set_battery_level(battery_state / (double) 0xff);
		status_set_telemetry(pitch, roll);
		status_set_throttle(throttle);
		status_set_armed(armed);
		status_set_armed_time(time);
		
		battery_state-=5;
		time += 1000;
		pitch += (rand() / (double) RAND_MAX) - (RAND_MAX / 2) * 1.0;
		roll += (rand() / (double) RAND_MAX) - (RAND_MAX / 2) * 1.0;
		throttle += (rand() / (double) RAND_MAX) - (RAND_MAX / 2) * 1.0;
		armed ^= 0x1;
		
		if (throttle < 0) throttle = 0;
		if (throttle > 100) throttle = 100;
		
		_delay_ms(1000);
	}
}
