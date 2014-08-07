class CfgPatches
{
	class e12_amf_settings
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
	class E12_AMF_SETTINGS_INTERNAL_Logic: E12_AMF_Logic {
		displayName = "$STR_E12AMF_MOD_SETTINGS_INTERNAL";
		vehicleClass = "Modules";
		class Eventhandlers {
			init = "if (isServer) then {e12_amf_settings_internal = true;publicVariable 'e12_amf_settings_internal';call compile preprocessFileLineNumbers 'x\e12\addons\amf_settings\e12_amf_settings.sqf'};";
		};
	};
	class E12_AMF_SETTINGS_EXTERNAL_Logic: E12_AMF_Logic {
			displayName = "$STR_E12AMF_MOD_SETTINGS_EXTERNAL";
			vehicleClass = "Modules";
			class Eventhandlers {
				init = "if (isServer) then {e12_amf_settings_external = true;publicVariable 'e12_amf_settings_external';call compile preprocessFileLineNumbers 'e12_amf_settings.sqf'};";
			};
	};
};







