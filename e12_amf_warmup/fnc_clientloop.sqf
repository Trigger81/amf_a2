#include "script_component.hpp"

waitUntil{!isNil QGVAR(finished)};
LOG("Clientloop finished");

//Set date back
setDate GVAR(startDate);

player sideChat "Mission wurde gestartet!";