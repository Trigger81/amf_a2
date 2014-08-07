#include "script_component.hpp"
TRACE_1("Process","PreInitServer");

//Only prepare checks in singleplayer
if(!isMultiplayer) then {
	PREP(checkMarkers);
	PREP(checkMedics);
	PREP(checkHC);
	PREP(checkACE);
	PREP(checkDAC);
	PREP(checkDescription);
	PREP(checkLoadout);
    PREP(checkLoadoutPreInit);
    PREP(checkTools);
	PREP(checkAMFSettings);
    PREP(debugMsg);
	PREP(missionDebug);
    
    [] call FUNC(checkLoadoutPreInit);
};
