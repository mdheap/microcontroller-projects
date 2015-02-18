#ifndef DISPLAY_H
#define DISPLAY_H

#include "lib/Hd44780/CharDisplay.h"
#include "lib/Hd44780/Hd44780_Direct.h"

#include "State.h"

#ifndef DISPLAY_ROWS
#define DISPLAY_ROWS					2
#endif

#ifndef DISPLAY_COLS
#define DISPLAY_COLS					16
#endif

namespace digitalcave {

	class Display {
		private:
			Hd44780_Direct hd44780;
			CharDisplay char_display;

			
		public:
			Display();
			
			void update(State state);
	};
}

#endif