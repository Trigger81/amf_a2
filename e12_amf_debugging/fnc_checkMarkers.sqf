#include "script_component.hpp"
#define __isValidMarker(MARKER) (!(((getMarkerPos MARKER) select 0) == 0 && ((getMarkerPos MARKER) select 1) == 0 && ((getMarkerPos MARKER) select 2) == 0))



//Check respawn_west
_posWest = getMarkerPos "respawn_west";
_posEast = getMarkerPos "respawn_east";

if(!__isValidMarker("respawn_west") && !__isValidMarker("respawn_east")) then {
	["markers", "No respawnmarker 'respawn_west' or 'respawn_east' found"] call FUNC(debugMsg);    
};