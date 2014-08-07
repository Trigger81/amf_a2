#include "script_component.hpp"
TRACE_1("Process","ClientPostInit");

if(!(isNil "e12_amf_timesync_disable")) exitWith {};

LOG("Client add timesync event handler");
[QGVAR(timesync),
{
	TRACE_1("Time Sync Event", _this);
	_this spawn FUNC(timeSync);

}] call CBA_fnc_addEventHandler;
LOG("Client added timesync event handler");