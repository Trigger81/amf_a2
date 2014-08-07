#include "script_component.hpp"

if(isNil "e12_amf_warmup_enabled") exitWith {};
LOG('Server warmup enabled');

GVAR(startDate) = date;
publicVariable QGVAR(startDate);

[] spawn FUNC(serverloop);