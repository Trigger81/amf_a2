#include "script_component.hpp"

ace_sys_eject_fnc_weaponcheck = {}; //Disable geardrop in vehicles
ACE_NO_RECOGNIZE = false; //Disable recognize

ace_sys_tracking_markers_enabled = false;
ace_sys_tracking_markers_enabled_override = true; //force off 
ace_sys_tracking_radio_required = true;
ace_sys_tracking_gps_required = true;

ace_sys_wounds_enabled=true; //Enable wounding system (true, nil)
ace_sys_wounds_medics_only = nil; //Epi, Morph only medics (true, nil)
ace_sys_wounds_all_medics = nil; //Everyone is medic (true, nil)
ace_wounds_prevtime = 900; //Revive time
ace_sys_wounds_withSpect=nil; //Nil = Disable spectator
ace_sys_wounds_noai= true; //Disable wounding system for AI (true, nil)
ace_sys_wounds_leftdam=0; //Left damage Values recomended 0.01-0.08
ace_sys_spectator_RevShowButtonTime = 9999;  //Time to appear the respawn buttons when you are wounded, in seconds
ace_sys_wounds_no_rpunish=true; //No respawn punish (true, nil)
ace_sys_wounds_auto_assist=true; //(default true) Should (non medic) AI units automatically assist unconscious units in their group? (true, false)
ace_sys_wounds_auto_assist_any=false; //(default false) Should (non medic) AI units assist any unconscious friendly units (not just in their group)? Civilians will heal OpFor if enabled! (true, false)
ace_sys_wounds_no_medical_vehicles=false; //(default false) Should medical vehicles _not_ be usable as medical facilities? (true, false)
ACE_IFAK_Capacity = 3; // Size of IFAK slots

ace_sys_viewblock_blockgrass = true; //Enable grass viewblock (true, nil)

acre_sys_signal_terrainScaling = 1.0; //Default 1.0, No Loss 0

ace_sys_aitalk_enabled = nil; // AI Talk (true, nil)
ace_sys_aitalk_radio_enabled = nil; // Vehicle Radiosounds (true, nil)
ace_sys_aitalk_talkforplayer = nil; // AI Talk (true, nil)

ace_sys_destruction_enable_cookoff = true; //Ammo cookoff (true, false)

//Make everything public
publicVariable "ace_sys_eject_fnc_weaponcheck"; 
publicVariable "ACE_NO_RECOGNIZE";
publicVariable "ace_sys_tracking_markers_enabled";
publicVariable "ace_sys_tracking_markers_enabled_override";
publicVariable "ace_sys_tracking_radio_required";
publicVariable "ace_sys_tracking_gps_required";
publicVariable "ace_sys_wounds_enabled"; 
publicVariable "ace_sys_wounds_medics_only";
publicVariable "ace_sys_wounds_all_medics";
publicVariable "ace_wounds_prevtime";
publicVariable "ace_sys_wounds_withSpect";
publicVariable "ace_sys_wounds_noai"; 
publicVariable "ace_sys_wounds_leftdam";
publicVariable "ace_sys_spectator_RevShowButtonTime";
publicVariable "ace_sys_wounds_no_rpunish";
publicVariable "ace_sys_wounds_auto_assist";
publicVariable "ace_sys_wounds_auto_assist_any";
publicVariable "ace_sys_wounds_no_medical_vehicles";
publicVariable "ACE_IFAK_Capacity"; 
publicVariable "ace_sys_viewblock_blockgrass"; 
publicVariable "acre_sys_signal_terrainScaling";
publicVariable "ace_sys_aitalk_enabled";
publicVariable "ace_sys_aitalk_radio_enabled";
publicVariable "ace_sys_aitalk_talkforplayer";
publicVariable "ace_sys_destruction_enable_cookoff";

