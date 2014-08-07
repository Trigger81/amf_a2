#include "script_component.hpp"
TRACE_1("Process","ServerPostInit");
if(!(isNil "e12_amf_timesync_disable")) exitWith {};

LOG("Spawn servertime loop");
[] spawn FUNC(serverTimeLoop);