#include "script_component.hpp"
private["_hasOversize", "_oversizeUnits","_woRuckUnits"];
LOG("Loadout check");

//---------------------Check Oversize
_hasOversize = {
    private["_unit","_ret"];
	_ret = _this call ace_sys_ruck_fnc_RuckInventorySize;
	(_ret < -1);  
};

_oversizeUnits = [];
{
    if(_x call _hasOversize) then {
      	  PUSH(_oversizeUnits, vehicleVarName _x);
    };
}foreach switchableUnits;

if((count _oversizeUnits) > 0) then {
	["loadout", format["%1 Units has oversize rucksacks: %2", count _oversizeUnits, _oversizeUnits]] call FUNC(debugMsg);  	  
};

//---------------------Check Rucksack Packs
//Restore original functions
ACE_fnc_PackMagazine = FUNC(packMagazineOrig);
ACE_fnc_PackWeapon = FUNC(packWeaponOrig);
LOG("Restored hooked ruck functions");
TRACE_1("Failed wep packs", GVAR(failedWepPacks));
TRACE_1("Failed mag packs", GVAR(failedMagPacks));
if((count GVAR(failedWepPacks)) > 0) then {
	["loadout", format["%1 Weapons could not be packed in rucks: %2", count GVAR(failedWepPacks), GVAR(failedWepPacks)]] call FUNC(debugMsg);  	  
};
if((count GVAR(failedMagPacks)) > 0) then {
	["loadout", format["%1 Magazines could not be packed in rucks: %2", count GVAR(failedMagPacks), GVAR(failedMagPacks)]] call FUNC(debugMsg);  	  
};

//---------------------Check Has Ruck
_woRuckUnits = [];
{
	if(!([configFile >> "CfgVehicles" >> typeof _x, configFile >> "CfgVehicles" >> "CAAnimalBase"] call CBA_fnc_inheritsFrom)) then {
	    if(!(_x call ACE_fnc_HasRuck)) then {
	      	  PUSH(_woRuckUnits, _x);
	    };
	};
}foreach switchableUnits;
if((count _woRuckUnits) > 0) then {
	["loadout", format["%1 Units have no rucks: %2", count _woRuckUnits, _woRuckUnits]] call FUNC(debugMsg);  	  
};

//---------------------Check Basic Equip
_woCompassUnits = [];
{
	if(!([configFile >> "CfgVehicles" >> typeof _x, configFile >> "CfgVehicles" >> "CAAnimalBase"] call CBA_fnc_inheritsFrom)) then {
	    if(!([_x, "ItemCompass"] call ACE_fnc_HasWeapon)) then {
	      	  PUSH(_woCompassUnits, _x);
	    };
	};
}foreach switchableUnits;
if((count _woCompassUnits) > 0) then {
	["loadout", format["%1 Units have no compass: %2", count _woCompassUnits, _woCompassUnits]] call FUNC(debugMsg);  	  
};