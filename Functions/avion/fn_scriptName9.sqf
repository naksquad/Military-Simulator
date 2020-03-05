 private ["_pylonPaths","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo pleasework10;

 if (isEngineOn pleasework10) exitWith {hint parseText _tooLow};
  if ((fuel pleasework10) < 0.980000) exitWith {hint parseText _tooLowfuel};


disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 30000; 

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")}; 




switch (_TheGodPhase2) do {

  case "Falchion-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Scalpel": {_pylons = "PylonRack_1Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Shrieker 7x HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Shrieker 7x AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "GBU-12": {_pylons = "PylonMissile_1Rnd_Bomb_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Mk82": {_pylons = "PylonMissile_1Rnd_Mk82_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };

};



