class CfgPatches
{
	class e12_amf_debugging
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.62;
		requiredAddons[] = {"e12_amf_main","ace_sys_ruck"};
		author[] = {"Coati - Echo12 Development Team"};
		version = "0.1";
		authorUrl = "http://www.echo12.de";
	};
};


class Logic;
class E12_AMF_Logic;
class CfgVehicles {
	class E12_AMF_Debug_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_DEBUGGING";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_debug = true;publicVariable 'e12_amf_debug'};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_debugging {
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_debugging\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_debugging {
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_debugging\XEH_PostServerInit.sqf'";
    };
    
};






