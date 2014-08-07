class CfgPatches
{
	class e12_amf_dac
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




class Extended_PreInit_EventHandlers
{
	class e12_amf_dac {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_dac\XEH_PreClientInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_dac\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_dac {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_dac\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_dac\XEH_PostServerInit.sqf'";
    };
};





