#include "script_component.hpp"

[QGVAR(interact_text), { _this spawn {
	private["_showText"];
	TRACE_1("Interaction on client",_this);
	_showText = ((_this select 0) select 0) getVariable [QGVAR(showText), nil];
	_actionId = ((_this select 0) select 0) getVariable [QGVAR(actionId), nil];
	if(!isNil "_actionId") then {
		((_this select 0) select 0) removeAction _actionId;
	};

	if(!isNil "_showText") then {
		if(IS_ARRAY(_showText)) then {
			{
				titleText [_x,"PLAIN"];
				sleep 4;
			}foreach _showText;
		};
    };   
};}] call CBA_fnc_addEventHandler;
