#include "script_component.hpp"
TRACE_1("Server start loop",date);
private ["_delay"];
_delay = 30;
waitUntil{
		[QGVAR(timesync), date] call CBA_fnc_globalEvent;//CBA_fnc_remoteEvent;
		TRACE_1("Server sent time sync",date);
        sleep _delay;
        false;
};