#include "script_component.hpp"
TRACE_1("Process","PostInitClient");

//Activate Debug in Singleplayer/Editor
if(!isMultiplayer && (!isNil "e12_amf_poshelp") && e12_amf_poshelp) then {
    LOG("Poshelp is active");
    [] spawn FUNC(posHelpLoop);
    [] call FUNC(posHelpAction);
}else{
 	LOG("Poshelp is NOT active");   
};
