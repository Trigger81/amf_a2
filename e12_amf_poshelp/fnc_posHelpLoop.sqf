#include "script_component.hpp"

LOG("PosHelpLoop");

while {true} do {
    _hint  = "Current Position: <br/>";
    _hintasl  = format["ASL: <br/>%1<br/>", getPosASL player];
    _hintpos  = format["POS: <br/>%1<br/>", getPos player];
    _hintatl  = format["ATL: <br/>%1<br/>", getPosATL player];
    _objType = typeOf cursorTarget;
    _hintcursor  = format["Cursor: <br/>%1<br/>", _objType];
   	
	hintSilent parseText (_hint + _hintasl + _hintpos + _hintatl + _hintcursor);
  	sleep 0.5;  
};