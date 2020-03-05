//transp
private ["_lenumb","_num","_golden","_vialace","_i","_ctrl","_index","_atrapelacoleur","_la_voiture","_lacouleur1","_lacouleur2","_lacouleur3","_lacouleur4","_lestextures","_cnt","_minheight","_tooLow"];
disableSerialization;
_ctrl = _this # 0;
_index = _ctrl # 1;

 _minheight = "OFF";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];


((uiNamespace getVariable "ledisplaysav007") displayCtrl 1008) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", _index];

diag_log format ["_ctrl %1, _index %2", _ctrl,_index];

missionNamespace setVariable ["lacouleur4", _index];

//_atrapelacoleur = missionNamespace getVariable "lacouleur4";

_la_voiture = missionNamespace getVariable "theskcpveh";

if (isEngineOn _la_voiture) exitWith {hint parseText _tooLow};

_lacouleur1 = str (missionNamespace getVariable "lacouleur1");
_lacouleur2 = str (missionNamespace getVariable "lacouleur2");
_lacouleur3 = str (missionNamespace getVariable "lacouleur3");
_lacouleur4 = str (missionNamespace getVariable "lacouleur4");

_vialace = [
"B_APC_Tracked_01_AA_F",
"O_APC_Tracked_02_AA_F",
"I_LT_01_AA_F",
"I_LT_01_AT_F",
"I_LT_01_scout_F",
"I_LT_01_cannon_F",
"B_APC_Wheeled_01_cannon_F",
"B_APC_Tracked_01_CRV_F",
"B_APC_Tracked_01_rcws_F",
"B_AFV_Wheeled_01_cannon_F",
"B_AFV_Wheeled_01_up_cannon_F",
"O_APC_Tracked_02_cannon_F",
"O_APC_Wheeled_02_rcws_v2_F",
"I_APC_tracked_03_cannon_F",
"I_APC_Wheeled_03_cannon_F",
"B_MBT_01_arty_F",
"B_MBT_01_mlrs_F",
"O_MBT_02_arty_F",
"I_Truck_02_MRL_F",
"B_Boat_Transport_01_F",
"B_Lifeboat",
"B_Boat_Armed_01_minigun_F",
"O_Boat_Armed_01_hmg_F",
"C_Boat_Transport_02_F",
"C_Boat_Civil_01_rescue_F",
"C_Boat_Civil_01_police_F",
"C_Boat_Civil_01_F",
"C_Scooter_Transport_01_F",
"B_Truck_01_mover_F",
"B_Truck_01_ammo_F",
"B_Truck_01_box_F",
"B_Truck_01_cargo_F",
"B_Truck_01_flatbed_F",
"B_Truck_01_fuel_F",
"B_Truck_01_medical_F",
"B_Truck_01_Repair_F",
"B_Truck_01_transport_F",
"B_Truck_01_covered_F",
"B_MRAP_01_F",
"B_MRAP_01_gmg_F",
"B_MRAP_01_hmg_F",
"B_LSV_01_AT_F",
"B_LSV_01_armed_F",
"B_LSV_01_unarmed_F",
"B_Quadbike_01_F",
"O_LSV_02_AT_F",
"O_LSV_02_armed_F",
"O_LSV_02_unarmed_F",
"I_MRAP_03_F",
"I_MRAP_03_hmg_F",
"I_MRAP_03_gmg_F",
"I_G_Offroad_01_F",
"I_G_Offroad_01_AT_F",
"I_G_Offroad_01_armed_F",
"I_G_Offroad_01_repair_F",
"I_E_Offroad_01_F",
"I_G_Van_01_transport_F",
"I_G_Van_02_transport_F",
"I_C_Van_02_transport_F",
"C_IDAP_Van_02_transport_F",
"C_Van_02_transport_F",
"C_IDAP_Van_02_vehicle_F",
"I_G_Van_02_vehicle_F",
"I_C_Van_02_vehicle_F",
"I_G_Van_02_vehicle_F",
"C_Van_02_vehicle_F",
"C_Van_02_service_F",
"C_Van_02_medevac_F",
"C_Van_01_fuel_F",
"C_Truck_02_fuel_F",
"C_Hatchback_01_F",
"C_Hatchback_01_sport_F",
"C_Kart_01_F",
"C_Offroad_02_unarmed_F",
"C_IDAP_Offroad_02_unarmed_F",
"C_Offroad_01_repair_F",
"C_Offroad_01_F",
"C_IDAP_Offroad_01_F",
"C_SUV_01_F",
"C_Van_01_box_F",
"B_CTRG_Heli_Transport_01_sand_F",
"B_Heli_Transport_01_F",
"B_CTRG_Heli_Transport_01_tropic_F",
"B_Heli_Light_01_dynamicLoadout_F",
"B_Heli_Attack_01_dynamicLoadout_F",
"B_Heli_Transport_03_unarmed_F",
"B_Heli_Transport_03_F",
"B_Heli_Light_01_F",
"O_Heli_Light_02_unarmed_F",
"O_Heli_Light_02_dynamicLoadout_F",
"O_Heli_Attack_02_dynamicLoadout_F",
"O_Heli_Transport_04_F",
"O_Heli_Transport_04_ammo_F",
"O_Heli_Transport_04_bench_F",
"O_Heli_Transport_04_box_F",
"O_Heli_Transport_04_repair_F",
"O_Heli_Transport_04_fuel_F",
"O_Heli_Transport_04_medevac_F",
"O_Heli_Transport_04_covered_F",
"I_Heli_Transport_02_F",
"I_Heli_light_03_dynamicLoadout_F",
"I_Heli_light_03_unarmed_F",
"C_Heli_Light_01_civil_F",
"B_Plane_CAS_01_dynamicLoadout_F",
"B_Plane_Fighter_01_Stealth_F",
"B_Plane_Fighter_01_F",
"B_T_VTOL_01_armed_F",
"B_T_VTOL_01_infantry_F",
"B_T_VTOL_01_vehicle_F",
"O_Plane_CAS_02_dynamicLoadout_F",
"O_Plane_Fighter_02_F",
"O_Plane_Fighter_02_Stealth_F",
"O_T_VTOL_02_infantry_dynamicLoadout_F",
"O_T_VTOL_02_vehicle_dynamicLoadout_F",
"I_Plane_Fighter_03_dynamicLoadout_F",
"I_Plane_Fighter_04_F",
"I_C_Plane_Civil_01_F",
"B_SDV_01_F",
"B_MBT_01_cannon_F",
"B_MBT_01_TUSK_F",
"O_MBT_04_cannon_F",
"O_MBT_04_command_F",
"I_LT_01_AA_F",
"I_LT_01_AT_F",
"I_LT_01_scout_F",
"I_LT_01_cannon_F",
"I_MBT_03_cannon_F",
"B_GEN_Offroad_01_comms_F",
"B_GEN_Offroad_01_covered_F",
"B_T_UAV_03_dynamicLoadout_F",
"B_UAV_05_F",
"B_UAV_02_dynamicLoadout_F"
];
_golden = [
[0,2],
[0,2],
[0,1],
[0,1],
[0,1],
[0,1],
[0,1,2,3],
[0,2,3],
[0,2],
[0,1],
[0,1],
[0,1,2],
[0,2],
[0,1],
[0,2,3],
[0,1,2],
[0,1],
[0,1],
[0,2,3],
[0],
[0],
[0,1,2],
[0,1,2],
[0,1],
[0],
[0],
[0],
[0],
[0,1,2],
[0,1,2],
[0,1,2,3],
[0,1,3],
[0,1,2,3],
[0,1,2],
[0,1,3],
[0,1,3],
[0,1,2],
[0,1,2],
[0,1],
[0,1,2],
[0,1,2],
[0,3,5],
[0,3],
[0,3],
[0],
[0,1,4],
[0,1],
[0,1],
[0],
[0,1],
[0,1],
[0],
[0],
[0],
[0],
[0],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,3],
[0,1],
[0],
[0],
[0],
[0,2],
[0,2],
[0],
[0],
[0],
[0],
[0,1],
[0,1],
[0,1],
[0,1],
[0],
[0],
[0,1],
[0,1],
[0],
[0],
[0],
[0,1],
[0,1],
[0,1,2],
[0,1],
[0,1,2],
[0,1,2],
[0,1,2],
[0,1,2],
[0,1,2],
[0,1,2],
[0],
[0],
[0],
[0,1],
[0,1],
[0,1],
[0,1,2,3],
[0,1,2,3],
[0,1,2,3],
[0,1],
[0,1],
[0,1],
[0,1,2,3],
[0,1,2,3],
[0,1],
[0,1],
[0,1],
[0],
[0,1],
[0,1,2],
[0,1],
[0,1],
[0,1],
[0,1],
[0,1],
[0,1],
[0,1,2],
[0,2],
[0,2]
];



_la_couleur = "#(rgb,8,8,3)color(" + _lacouleur1 + "," + _lacouleur2 + "," + _lacouleur3 + "," + _lacouleur4 + ")";

_lestextures = getObjectTextures (vehicle player);
_cnt = count _lestextures;

((uiNamespace getVariable "ledisplaysav007") displayCtrl 1200) ctrlSetText _la_couleur;

diag_log format ["_la_voiture %1", _la_voiture];
_num = _vialace findIf {_x isEqualTo (typeof _la_voiture)};

diag_log format ["_num %1", _num];
if !(_num == -1) then {
	_lenumb =  _golden select _num;
	diag_log format ["_lenumb%1", _lenumb];
	{
		_la_voiture setObjectTexture [_x, _la_couleur];	
	} forEach _lenumb;
	
}else{
	for "_i" from 0 to _cnt do { 
		_la_voiture setObjectTexture [_i, _la_couleur];	
	};
};
