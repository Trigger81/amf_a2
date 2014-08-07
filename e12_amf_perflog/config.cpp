class CfgPatches
{
	class e12_amf_perflog
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
	class E12_amf_perflog_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_PERFLOG_DISABLE";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_perflog_disable = true;publicVariable 'e12_amf_perflog_disable'};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_perflog {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_perflog\XEH_PreInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_perflog\XEH_PreInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_perflog {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_perflog\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_perflog\XEH_PostServerInit.sqf'";
    };
    
};






