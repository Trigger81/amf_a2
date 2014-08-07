#include "script_component.hpp"

waitUntil{!isNil "ACE_fnc_PackMagazine"};
LOG("Install Ruck Hook");
GVAR(failedMagPacks)=[];
FUNC(packMagazineOrig)=ACE_fnc_PackMagazine;
FUNC(packMagazineHook)={
	private["_ret"];
    TRACE_1("Mag pack",_this select 0);
	_ret=_this call FUNC(packMagazineOrig);
	if(!_ret) then {
        TRACE_2("Failed mag pack",_this select 0,_this select 1);
		//PUSH(GVAR(failedMagPacks),[ vehicleVarName (_this select 0),_this select 1]);
        PUSH(GVAR(failedMagPacks),_this);
	};
	_ret;
};
ACE_fnc_PackMagazine=FUNC(packMagazineHook);

GVAR(failedWepPacks)=[];
FUNC(packWeaponOrig)=ACE_fnc_PackWeapon;
FUNC(packWeaponHook)={
	private["_ret"];
    TRACE_1("Weapon pack",_this select 0);
	_ret=_this call FUNC(packWeaponOrig);
	if(!_ret) then {
        TRACE_2("Failed weapon pack",_this select 0,_this select 1);
		PUSH(GVAR(failedWepPacks),_this);
	};
	_ret;
};
ACE_fnc_PackWeapon = FUNC(packWeaponHook);