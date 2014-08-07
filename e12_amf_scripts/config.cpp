class CfgPatches
{
	class e12_amf_scripts
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
	class E12_AMF_NOBODYISMAD_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_NOBODYISMAD_ENABLE";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_nobodyismad_enable = true;};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_scripts {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_scripts\XEH_PreInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_scripts\XEH_PreInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_scripts {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_scripts\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_scripts\XEH_PostServerInit.sqf'";
    };
    
};






