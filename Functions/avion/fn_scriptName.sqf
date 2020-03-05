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
  _prayGod =  ctrlIDC _ctrl - 2000; 

//(vehicle player) setPylonLoadout [_prayGod, ""];

switch (_TheGodPhase2) do {
   case "Falchion-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Scalpel": {_pylons ="PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Shrieker 7x HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Shrieker 7x AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "GBU-12": {_pylons = "PylonMissile_1Rnd_Bomb_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Mk82": {_pylons = "PylonMissile_1Rnd_Mk82_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Macer": {_pylons = "PylonRack_1Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Macer 3x": {_pylons = "PylonRack_3Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Usaf": {
      (vehicle player) setObjectTextureGlobal [1, "Media\ericjwipeout\wipeoutwings_usaf01_co.paa"];
      (vehicle player) setObjectTextureGlobal [0, "Media\ericjwipeout\wipeoutfuselage_usaf01_co.paa"];
   };  
   case "EuroShark": {
      (vehicle player) setObjectTextureGlobal [1, "Media\ericjwipeout\wipeoutwings_EuroShark01_co.paa"];
      (vehicle player) setObjectTextureGlobal [0, "Media\ericjwipeout\wipeoutfuselage_EuroShark01_co.paa"];
   };  
};



