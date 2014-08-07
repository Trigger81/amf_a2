class CfgPatches
{
	class e12_amf_poshelp
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
	class E12_AMF_Poshelp_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_POSHELP";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_poshelp = true;publicVariable 'e12_amf_poshelp'};";
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class e12_amf_poshelp {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_poshelp\XEH_PreClientInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_poshelp {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_poshelp\XEH_PostClientInit.sqf'";
    };
    
};






