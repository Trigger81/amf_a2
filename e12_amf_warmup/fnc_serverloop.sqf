#include "script_component.hpp"

waitUntil{!isNil QGVAR(finished)};
LOG("Serverloop finished");

//Set date back
setDate GVAR(startDate);

//activate DAC
e12_amf_dac_DELAYED_START_GO=true;
publicVariable "e12_amf_dac_DELAYED_START_GO";