class CfgPatches
{
	class e12_amf_interact
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
	class e12_amf_interact {
        clientInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_interact\XEH_PreInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\e12\addons\amf_interact\XEH_PreInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class e12_amf_interact {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_interact\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\e12\addons\amf_interact\XEH_PostServerInit.sqf'";
    };
    
};






