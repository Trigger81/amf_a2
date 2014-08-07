#include "script_component.hpp"

[QGVAR(interact_text),{_this spawn {
	TRACE_1("Interaction on server",_this);
	if(((_this select 0) select 0) getVariable [QGVAR(deleteAfter), false]) then {
    	deleteVehicle ((_this select 0) select 0);  
    };   
};}] call CBA_fnc_addEventHandler;