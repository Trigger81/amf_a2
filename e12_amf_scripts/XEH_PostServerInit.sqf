#include "script_component.hpp"

if(!isNil "e12_amf_nobodyismad_enable") then {
	LOG("Start nobodys mad");
	[] spawn FUNC(nobodyIsMad);
};
