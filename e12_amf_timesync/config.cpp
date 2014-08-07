class CfgPatches
{
	class e12_amf_timesync
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
	class E12_AMF_TIMESYNC_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_TIMESYNC_DISABLE";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_timesync_disable = true;publicVariable 'e12_amf_timesync_disable'};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_timesync {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_timesync\XEH_PreClientInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_timesync\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_timesync {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_timesync\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_timesync\XEH_PostServerInit.sqf'";
    };
    
};






