#include "script_component.hpp"

LOG("DAC Check init");
if(!isNil "e12_amf_dac_userscripts") then {
	if(!IS_ARRAY(e12_amf_dac_userscripts)) then {
		["e12 amf dac settings", "Userscripts 'e12_amf_dac_userscripts' is set but not an array, Recommendation:e12_amf_dac_userscripts=[{script1},{script2}]"] call FUNC(debugMsg);  	
	}else{
		{
			if(!IS_CODE(_x)) then {
				["e12 amf dac settings", format["Userscripts 'e12_amf_dac_userscripts' has an entry which is not executable code: '%1', Recommendation:e12_amf_dac_userscripts=[{[_this] execVM ""script.sqf""},{script2}]",_x]] call FUNC(debugMsg);
			};

		} foreach e12_amf_dac_userscripts;
		
	};
};
if(!(isNil "DAC_Basic_Value")) then {
	if(!isNil "DAC_Marker" && DAC_Marker != 0) then {
		["dac settings", "DAC_Markers are visible, Recommendation: DAC_Marker=0"] call FUNC(debugMsg);    
	};
	
	if(!isNil "DAC_Com_Values" && (DAC_Com_Values select 0 != 0) || (DAC_Com_Values select 1 != 1) || (DAC_Com_Values select 2 != 0)) then {
	  ["dac settings", "DAC_Com_Values are changed, Recommendation: DAC_Com_Values=[0,1,0]"] call FUNC(debugMsg);  
	};
	
	if(!isNil "DAC_STRPlayers" && IS_ARRAY(DAC_STRPlayers)) then {
		//DAC_STRPlayers  = 
		_missingunits = [];
	    _noname = 0;
		{
		 	TRACE_1("Unit name: ",vehicleVarName _x);
		    if(vehicleVarName _x != "" && !((vehicleVarName _x) in DAC_STRPlayers)) then {
				PUSH(_missingunits, vehicleVarName _x);	            
	        };
	        if(vehicleVarName _x == "") then {
	          	INC(_noname);  
	        };
		} foreach switchableUnits;
	    
	    if(_noname > 0) then {
	    	["dac settings", format["There are %1 Playable Units without a variable name needed for DAC",_noname]] call FUNC(debugMsg);    
	    }; 
	    if(count _missingunits > 0) then {
	      	["dac settings", format["There are %1 Playable Units without a valid variable name inside DAC_STRPlayers: %2", count _missingunits, str(_missingunits)]] call FUNC(debugMsg);  
	    };   
	};
}else{
 	LOG("DAC not activated");   
};