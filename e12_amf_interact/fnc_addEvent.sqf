#include "script_component.hpp"
TRACE_1("AddUserAction", _this);
// In Event get Target: _this select 0 select 0
[(_this select 3) select 0,[_this, _this select 3]] call CBA_fnc_globalEvent;