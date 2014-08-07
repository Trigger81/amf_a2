#define PVAR(var1, value) var1 = value;publicVariable #var1

PVAR(ace_sys_eject_dont_drop_shit,true);
PVAR(ace_sys_eject_fnc_weaponcheck,{}); //Disable geardrop in vehicles
PVAR(ACE_NO_RECOGNIZE, false); //Disable recognize

PVAR(ace_sys_tracking_markers_enabled, false);
PVAR(ace_sys_tracking_markers_enabled_override, true); //force off  
PVAR(ace_sys_tracking_radio_required, true);
PVAR(ace_sys_tracking_gps_required, true);

PVAR(ace_sys_wounds_enabled, true); //Enable wounding system (true, nil)
PVAR(ace_sys_wounds_medics_only, nil); //Epi, Morph only medics (true, nil)
PVAR(ace_sys_wounds_all_medics, nil); //Everyone is medic (true, nil)
PVAR(ace_wounds_prevtime, 900); //Revive time
PVAR(ace_sys_wounds_withSpect, nil); //Nil = Disable spectator
PVAR(ace_sys_wounds_noai, true); //Disable wounding system for AI (true, nil)
PVAR(ace_sys_wounds_leftdam, 0); //Left damage Values recomended 0.01-0.08
PVAR(ace_sys_spectator_RevShowButtonTime, 9999);  //Time to appear the respawn buttons when you are wounded, in seconds
PVAR(ace_sys_wounds_no_rpunish, true); //No respawn punish (true, nil)
PVAR(ace_sys_wounds_auto_assist, false); //(default true) Should (non medic) AI units automatically assist unconscious units in their group? (true, false)
PVAR(ace_sys_wounds_auto_assist_any, false); //(default false) Should (non medic) AI units assist any unconscious friendly units (not just in their group)? Civilians will heal OpFor if enabled! (true, false)
PVAR(ace_sys_wounds_no_medical_vehicles, false); //(default false) Should medical vehicles _not_ be usable as medical facilities? (true, false)
PVAR(ACE_IFAK_Capacity, 3); // Size of IFAK slots

PVAR(ace_sys_viewblock_blockgrass, true); //Enable grass viewblock (true, nil)

PVAR(acre_sys_signal_terrainScaling, 1); //Default 1.0, No Loss 0

PVAR(ace_sys_aitalk_enabled, nil); // AI Talk (true, nil)
PVAR(ace_sys_aitalk_radio_enabled, nil); // Vehicle Radiosounds (true, nil)
PVAR(ace_sys_aitalk_talkforplayer, nil); // AI Talk (true, nil)

PVAR(ace_sys_destruction_enable_cookoff, true); //Ammo cookoff (true, false)