#include "script_component.hpp"
LOG("PosHelpAction");

player addAction ["Save POS ASL",QUOTE(PATHTO(fnc_posHelpAction_ASL))];
player addAction ["Save POS",QUOTE(PATHTO(fnc_posHelpAction_Pos))];
player addAction ["Save POS ATL",QUOTE(PATHTO(fnc_posHelpAction_ATL))];
player addAction ["Save Cursor Classname",QUOTE(PATHTO(fnc_posHelpAction_Cursor))];