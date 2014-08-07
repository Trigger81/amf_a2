#include "script_component.hpp"

if(isNil QGVAR(enabled)) exitWith {};
LOG('Client warmup enabled');

//Support jip - mission already started
if(!isNil QGVAR(finished)) exitWith {};
LOG('Client warmup not yet finished');

[] spawn FUNC(clientloop);
