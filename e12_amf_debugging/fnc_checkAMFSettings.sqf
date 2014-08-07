#include "script_component.hpp"

LOG("AMF Settings Check init");
if((!isNil "e12_amf_settings_internal") && (!isNil "e12_amf_settings_external")) then {
	["e12 amf settings", "Internal _AND_ External Settings Modules are set, only use one of them"] call FUNC(debugMsg);  	
};
