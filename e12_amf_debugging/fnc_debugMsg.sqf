#include "script_component.hpp"
private["_msg","_sys"];
_sys = _this select 0;
_msg = _this select 1;
hintc format["Error (%1): %2",_sys,_msg];
sleep 0.1;

