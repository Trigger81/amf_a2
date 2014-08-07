#include "script_component.hpp"
LOG("AddUserAction");

PARAMS_2(_obj,_actiontext);
DEFAULT_PARAM(2,_showText,nil);
DEFAULT_PARAM(3,_deleteAfter,true);
DEFAULT_PARAM(4,_removeAction,true);

//For all clients
_actionId = _obj addAction [_actiontext,QPATHTO_F(fnc_addEvent),[QGVAR(interact_text),_obj]];

TRACE_3("Object added interaction",_obj,str(_obj),typeof _obj);

if(!isNil "_showtext") then {
	_obj setVariable [QGVAR(showText), _showText];
};

if(!isNil "_actionId") then {
	_obj setVariable [QGVAR(actionId), _actionId];
};



//For server
if (!isServer) exitWith {};
_obj setVariable [QGVAR(deleteAfter), _deleteAfter];

