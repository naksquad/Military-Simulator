private ["_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo (vehicle player);

 if (isEngineOn (vehicle player)) exitWith {hint parseText _tooLow};
  if (fuel (vehicle player) < 0.980000) exitWith {hint parseText _tooLowfuel};



disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 7000; 

switch (_TheGodPhase2) do {
    case "BIM 9X AA x1": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "AMRAAM D AA x1": {_pylons = "PylonMissile_Missile_AMRAAM_D_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU SDB x4": {_pylons = "PylonRack_Bomb_SDB_x4"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU 12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};  
    case "Dark Grey": {[(vehicle player), ["DarkGrey",1], true ] call BIS_fnc_initVehicle;};
    case "Dark Grey Camo": {[(vehicle player), ["DarkGreyCamo",1], true ] call BIS_fnc_initVehicle;};
};