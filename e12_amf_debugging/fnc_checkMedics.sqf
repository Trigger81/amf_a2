#include "script_component.hpp"
private["_medics","_units"];
LOG("Medic check init");

waitUntil{!isNil "ace_sys_wounds_fnc_isMedic"};
_medics = 0;
TRACE_1("Playable units", count switchableUnits);
{
	if(_x call ace_sys_wounds_fnc_isMedic) then {
        TRACE_1("Medic found",_x);
      	INC(_medics);  
    };    
} foreach switchableUnits;
TRACE_1("Medic check result",_medics);
_units = count switchableUnits;
if((_medics == 0) || ((_units / _medics) > 7)) then {
	["unitconf", format["Only %1 Medics found",_medics]] call FUNC(debugMsg);
};