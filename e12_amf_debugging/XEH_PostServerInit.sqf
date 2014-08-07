#include "script_component.hpp"
TRACE_1("Process","PostInitServer");

//Activate Debug in Singleplayer/Editor
if(!isMultiplayer && (!isNil "e12_amf_debug") && e12_amf_debug) then {
    LOG("Debug is active");
    [] spawn FUNC(missionDebug);
}else{
 	LOG("Debug is NOT active");   
};
