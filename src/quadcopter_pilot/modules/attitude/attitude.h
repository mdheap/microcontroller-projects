#include "../../main.h"

/*
 * Initialize the attitude integrator.  Most implementations require the gyro and / or accel data to compensate for initial conditions
 */
void attitude_init(vector_t gyro, vector_t accel);

/*
 * Given gyro_data in rad/s, accel_data in m/s/s, and delta t in seconds, return an attitude in radians (relative to the power on state)
 */
vector_t attitude(vector_t gyro, vector_t accel, double dt);
