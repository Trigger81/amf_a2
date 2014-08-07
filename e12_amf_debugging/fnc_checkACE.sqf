#include "script_component.hpp"
LOG("ACE Check init");

TRACE_2("Grass viewblock",(isNil "ace_sys_viewblock_blockgrass"), ace_sys_viewblock_blockgrass);
_errorgrass = {
   	["ace settings", "ACE AI Viewblock not activated"] call FUNC(debugMsg);  
};

_errorwounds = {
   	["ace settings", "ACE Wounding System not activated"] call FUNC(debugMsg);  
};

_errormarkers = {
   	["ace settings", "ACE Force-Group-Markers-Off not activated"] call FUNC(debugMsg);  
};

_errorstamina = {
  	["ace settings", "ACE NoStamina activated, Rucks will be disabled!"] call FUNC(debugMsg);  
};

_errormapsystem = {
  	["ace settings", "ACE MapSystem activated, GPS will not work properly!"] call FUNC(debugMsg);  
};

//isNil "ace_sys_viewblock_blockgrass" || !ace_sys_viewblock_blockgrass DOES NOT WORK, ANSWER TO info@echo12.de plz
  
if(isNil "ace_sys_viewblock_blockgrass") then {
  	[] call _errorgrass;  
}else{
   	if(!ace_sys_viewblock_blockgrass) then {
    	[] call _errorgrass;     
    };
};

if(isNil "ace_sys_wounds_enabled") then {
  	[] call _errorwounds;  
}else{
   	if(!ace_sys_wounds_enabled) then {
    	[] call _errorwounds;     
    };
};

if(isNil "ace_sys_tracking_markers_enabled") then {
  	[] call _errormarkers;  
}else{
   	if(ace_sys_tracking_markers_enabled) then {
    	[] call _errormarkers;     
    };
};

if(!isNil "ACE_NoStaminaEffects") then {
  	if(ACE_NoStaminaEffects) then {
		[] call _errorstamina;
    };  
};

if(!isNil "ace_sys_map_enabled") then {
  	if(ace_sys_map_enabled) then {
      	[] call _errormapsystem;  
    };  
};


