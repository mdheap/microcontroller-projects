#include "Life.h"
#include <Draw.h>
#include "Matrix.h"
#include <util/delay.h>
#include <stdlib.h>

using namespace digitalcave;

extern Matrix matrix;

Life::Life(uint8_t baseColor) {
	this->baseColor = baseColor;
}

Life::~Life() {
}

void Life::run() {
	uint8_t running = 255;
	
	reset();
	
	while (running) {
		for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
			for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
				tempstate[x][y] = state[x][y];
			}
		}
		for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
			for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
				uint8_t count = getNeighborCount(x, y);
				if (state[x][y] > 0) {
					// alive
					if (count == 2 || count == 3) {
						// staying alive; do nothing
						tempstate[x][y] = 0x01;
					}
					else {
						// overpopulation or underpopulation
						tempstate[x][y] = 0x00;
					}
				}
				else if (count == 3) {
					// birth
					tempstate[x][y] = 0x01;
				}
			}
		}
		for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
			for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
				state[x][y] = tempstate[x][y];
			}
		}

		flush();

		//Store board hash
		for (uint8_t i = LIFE_HASH_COUNT - 1; i > 0; i--) {
			hashes[i] = hashes[i - 1];
		}
		hashes[0] = getStateHash();

		uint8_t m = 0;
		for (uint8_t i = 0; i < LIFE_HASH_COUNT; i++) {
			for (uint8_t j = i + 1; j < LIFE_HASH_COUNT; j++) {
				if (hashes[i] == hashes[j]) m++;
			}
		}
		if (m == 0) matches = 0;
		else matches++;

		if (matches >= LIFE_MATCH_COUNT) {
			reset();
		}
		
		_delay_ms(128);
		
		running--;
	}
}

uint8_t Life::getState(int8_t x, int8_t y) {
	if (x < 0) x = 11;
	else if (x > 11) x = 0;
	if (y < 0) y = 11;
	else if (y > 11) y = 0;
	return state[x][y]; 
}

uint8_t Life::getNeighborCount(int8_t x, int8_t y) {
	uint8_t count = 0;
	if (getState(x - 1, y - 1)) count++;
	if (getState(x - 1, y)) count++;
	if (getState(x - 1, y + 1)) count++;
	if (getState(x, y - 1)) count++;
	if (getState(x, y + 1)) count++;
	if (getState(x + 1, y - 1)) count++;
	if (getState(x + 1, y)) count++;
	if (getState(x + 1, y + 1)) count++;
	return count;
}

uint32_t Life::getStateHash() {
	uint32_t hash = 0;
	for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
			hash += x * y * (state[x][y] ? 1 : 0);
		}
	}
	return hash;
}

void Life::flush() {
    for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
			if (state[x][y] > 0) {
				if (baseColor == 0) matrix.setColor(0,255);
				else if (baseColor == 1) matrix.setColor(255,255);
				else if (baseColor == 2) matrix.setColor(255,0);
			} else {
				matrix.setColor(0,0);
			}
			matrix.setPixel(x, y);
		}
    }
	matrix.flush();
}

void Life::reset() {
	for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
			matrix.setPixel(x, y);
		}
    }
	matrix.flush();
	_delay_ms(255);
	
	for (uint8_t i = 0; i < LIFE_HASH_COUNT; i++) {
		hashes[i] = 0;
	}
	matches = 0;
	
	// random start positions
	for (uint8_t x = 0; x < MATRIX_WIDTH; x++) {
		for (uint8_t y = 0; y < MATRIX_HEIGHT; y++) {
			if ((random() & 0x3) == 0x3) {		//25% chance
				state[x][y] = 0x01; // birth
			} else {
				state[x][y] = 0x00;
			}
		}
	}
	
	flush();
	
	// pause to show start position
	_delay_ms(255);
}
