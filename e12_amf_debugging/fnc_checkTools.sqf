#include "script_component.hpp"
private["_hasAdmin"];
_hasAdmin = false;


if(!isNil "e12_tools_settings_admins") then {
	if(e12_tools_settings_admins) then {
      	_hasAdmin = true;  
    };	   
};

{
    if( _x getvariable["e12_tools_isadmin",false] ) then {
    	_hasAdmin = true;    
    };
}foreach switchableUnits;

if(!_hasAdmin) then {
  	["e12 tools", "No admin available, check manual"] call FUNC(debugMsg);  
};
