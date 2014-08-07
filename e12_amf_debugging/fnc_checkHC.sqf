#include "script_component.hpp"
private["_hcunitscount","_hcunits","_hc","_distance"];
LOG("HC check init");
_hcunitscount = 0;
_hcunits = [];
{
    if([configFile >> "CfgVehicles" >> typeof _x, configFile >> "CfgVehicles" >> "CAAnimalBase"] call CBA_fnc_inheritsFrom) then {
		INC(_hcunitscount);
        PUSH(_hcunits,_x); 
        TRACE_2("HCUnit found: ", _x, typeof _x);       
    };
	   
} foreach switchableUnits;

if(_hcunitscount == 0 && !(isNil "DAC_Basic_Value")) then {
	["hcconf", "No HC Player found"] call FUNC(debugMsg);
};
if(_hcunitscount > 1) then {
	["hcconf", format["More than one HC Player found (%1)",_hcunitscount]] call FUNC(debugMsg);
};
if(count _hcunits > 0) then {
   	_hc = _hcunits select 0;
    if((_hc getVariable ["ace_w_eh",-1]) != 0) then {
    	["hcconf", "HC Player has activated ace woundings, try disable using ace_w_eh"] call FUNC(debugMsg);	 		   
    };
    _distance = 99999;
    {
        if(_x != _hc) then {
        	_distance = _distance min (_hc distance (getPos _x));    
        };
    } foreach switchableUnits;
    if(_distance < 1000) then {
    	["hcconf", format["HC Player is to close to playable units, distance = %1m",ceil _distance]] call FUNC(debugMsg);    
    };
};