#include "script_component.hpp"
TRACE_1("Process","PreInitClient");

//Only prepare checks in singleplayer
if(!isMultiplayer) then {
	PREP(posHelpLoop);
    PREP(posHelpAction);
};
