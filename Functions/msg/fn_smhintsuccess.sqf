

private ["_veh","_vehName","_completeText","_reward","_GAU","_rabbit","_mortar"];

smRewards =
[

["a Y-32 Xian", "O_T_VTOL_02_infantry_dynamicLoadout_F"],
["a WY-55 Hellcat", "I_Heli_light_03_dynamicLoadout_F"],
["an AH-99 Blackfoot", "B_Heli_Attack_01_dynamicLoadout_F"],
["an AH-9 Pawnee Armed", "B_Heli_Light_01_dynamicLoadout_F"],
["a To-199 Neophron", "O_Plane_CAS_02_dynamicLoadout_F"],
["an To-201 Shikra", "O_Plane_Fighter_02_F"],
["an F/A-181 Black Wasp II (Stealth)", "B_Plane_Fighter_01_Stealth_F"],
["an A-164 Wipeout (CAS)", "B_Plane_CAS_01_dynamicLoadout_F"],
["an MI-48 Kajman", "O_Heli_Attack_02_dynamicLoadout_F"],
["a PO-30 Orca", "O_Heli_Light_02_dynamicLoadout_F"],
["an Nyx Armored AA", "I_LT_01_AA_F"],
["an Nyx Armored AutoCannon", "I_LT_01_cannon_F"],
["an Nyx Armored AT", "I_LT_01_AT_F"],
["an T-140 Angara", "O_MBT_04_cannon_F"],
["an T-140k Angara", "O_MBT_04_command_F"],
["an FV-720 Mora", "I_APC_tracked_03_cannon_F"],
["an Nyx Armored RECON", "I_LT_01_scout_F"],
["an Rhino MGS", "B_AFV_Wheeled_01_cannon_F"],
["an Rhino MGS", "B_AFV_Wheeled_01_up_cannon_F"],
["an A-149 Gryphon", "I_Plane_Fighter_04_F"],
["an AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F"],
["a V-44 X Blackfish Gunship", "B_T_VTOL_01_armed_F"],
["an Prowler AT", "B_LSV_01_AT_F"],
["an Prowler HMG", "B_LSV_01_armed_F"],
["a Olin AT", "O_LSV_02_AT_F"],
["an Olin Minigun", "O_LSV_02_armed_F"],
["an IFV-6a Cheetah", "B_APC_Tracked_01_AA_F"],
["an AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F"],
["a T-100 Varsuk", "O_MBT_02_cannon_F"],
["an To-201 Shikra (Stealth)", "O_Plane_Fighter_02_Stealth_F"],
["an MBT-52 Kuma", "I_MBT_03_cannon_F"],
["a Strider HMG", "I_MRAP_03_hmg_F"],
["an M2A4 Slammer (Urban Purpose)", "B_MBT_01_TUSK_F"],
["a CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F"],
["an MI-290 Taru (Transport)", "O_Heli_Transport_04_covered_F"],
["an MI-290 Taru (Bench)", "O_Heli_Transport_04_bench_F"],
["an CH-67 Huron Armed", "B_Heli_Transport_03_F"],
["an CH-67 Huron Unarmed", "B_Heli_Transport_03_unarmed_F"],
["a MB 4WD ", "I_C_Offroad_02_unarmed_F"],
["an A-143 Buzzard", "I_Plane_Fighter_03_dynamicLoadout_F"],
["an M-900", "C_Heli_Light_01_civil_F"],
["a Caesar BTT", "I_C_Plane_Civil_01_F"],
["a EH302", "C_IDAP_Heli_Transport_02_F"],
["an F/A-181 Black Wasp II", "B_Plane_Fighter_01_F"]
];
smMarkerList =
["smReward1","smReward2","smReward3","smReward4","smReward5","smReward6","smReward7","smReward8","smReward9","smReward10","smReward11","smReward12","smReward13","smReward14","smReward15","smReward16","smReward17","smReward18","smReward19","smReward20","smReward21","smReward22","smReward23","smReward24","smReward25","smReward26","smReward27"];

_veh = selectRandom smRewards;

_vehName = _veh # 0;
RewardvehVarname = _veh # 1;

_completeText = format[
"<t align='center'><t size='2.2'>Side Mission</t><br/><t size='1.5' color='#08b000'>COMPLETE</t><br/>____________________<br/>Fantastic job, lads! The OPFOR stationed on the island won't last long if you keep that up!<br/><br/>We've given you %1 to help with the fight. You'll find it at base.<br/><br/>Focus on the main objective for now; we'll relay this success to the intel team and see if there's anything else you can do for us. We'll get back to you in 10-12 minutes.</t>",_vehName];
_reward = createVehicle [RewardvehVarname, getMarkerPos "smReward1",smMarkerList,0,"NONE"];

[_reward] call NAK_fnc_reward;

[_completeText] remoteExec ["NAK_fnc_globalHint",0,false];
_rewardtext = format["Your team received %1!", _vehName];
["Reward",_rewardtext] remoteExec ["NAK_fnc_globalNotification",0,false];

