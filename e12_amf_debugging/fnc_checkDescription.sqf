#include "script_component.hpp"
if(isNumber(missionConfigFile >> "Header" >> "maxPlayers")) then {
	_maxPlayers = getNumber(missionConfigFile >> "Header" >> "maxPlayers");
	if(_maxPlayers != count switchableUnits) then {
		["description.ext", format["Number of players does not match 'maxPlayers' in description.ext (%1 != maxPlayers %2)",count switchableUnits, _maxPlayers]] call FUNC(debugMsg);
	};

}else{
   	["description.ext", "Number of 'maxPlayers' in description.ext not correct or not defined"] call FUNC(debugMsg);
};

if(isNumber(missionConfigFile >> "Header" >> "minPlayers")) then {
	_minPlayers = getNumber(missionConfigFile >> "Header" >> "minPlayers");
	if(_minPlayers != 1) then {
		["description.ext", "Number of 'minPlayers' in description.ext not 1"] call FUNC(debugMsg);
	};

}else{
   	["description.ext", "Number of 'minPlayers' in description.ext not correct or not defined"] call FUNC(debugMsg);
};


if(isText(missionConfigFile >> "respawn")) then {
	_respawn = getText(missionConfigFile >> "respawn");
	if((tolower _respawn) != "base") then {
		["description.ext", "Respawn not set to 'Base'"] call FUNC(debugMsg);
	};

}else{
   	["description.ext", "Respawn not set to 'Base'"] call FUNC(debugMsg);
};

// Check if paramsArray is set
if(!(isNil "DAC_Basic_Value")) then {
	if(!isClass(missionConfigFile >> "Params")) then {
		["description.ext", "DAC activated but no Params in description.ext found"] call FUNC(debugMsg);
    };
};
