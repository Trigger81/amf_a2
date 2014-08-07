class CfgPatches
{
	class e12_amf_tracking
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.62;
		requiredAddons[] = {"e12_amf_main"};
		author[] = {"Coati - Echo12 Development Team"};
		version = "0.1";
		authorUrl = "http://www.echo12.de";
	};
};


class Logic;
class E12_AMF_Logic;
class CfgVehicles {
	class E12_AMF_TRACKING_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_TRACKING_ENABLE";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_tracking_enabled = true;publicVariable 'e12_amf_tracking_enabled'};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_tracking {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_tracking\XEH_PreClientInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_tracking\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_tracking {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_tracking\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_tracking\XEH_PostServerInit.sqf'";
    };
    
};






