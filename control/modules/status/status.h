#ifndef STATUS_H
#define STATUS_H

#include <stdlib.h>
#include <avr/io.h>
#include "../../main.h"

/*
 * Status hardware must implement these functions
 */
 
/*
 * Initialize hardware (will be called prior to main loop)
 */
void status_init();

/*
 * Initializes the persistent text / graphics for each mode
 */
void status_init_mode_flight();
void status_init_mode_calibrate();
void status_init_mode_pid();
void status_init_mode_kalman();

/*
 * Sets the battery level for the pilot (double from 0.0 to 1.0 inclusive)
 */
void status_set_pilot_battery_level(double value);

/*
 * Sets the battery level for the control (double from 0.0 to 1.0 inclusive)
 */
void status_set_control_battery_level(double value);


/*
 * Sets the throttle (double from 0.0 to 1.0 inclusive).  If 
 * armed, then show throttle; otherwise show ---
 */
void status_set_throttle(double value, uint8_t armed);

/*
 * Sets the telemetry values on the display (double values, in degrees; level is 0)
 */
void status_set_telemetry(double pitch, double roll);

/*
 * Sets the current armed time, in milliseconds.
 */
void status_set_armed_time(uint32_t millis);

/*
 * Sets rx / tx icons depending on communication status
 */
void status_set_comm_state(uint8_t tx, uint8_t rx);

/* Sets the motor values on the display (double value from 0.0 to 1.0)
 */
void status_set_motors(double left, double front, double right, double back);


//Warning functions: these will be implemented by a high-attention module, probably
// something like a buzzer or strobe.  They are all error conditions.
void status_error_init();

void status_error_battery(uint8_t error);

#endif
