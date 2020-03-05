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
  _prayGod =  ctrlIDC _ctrl - 60000; 

switch (_TheGodPhase2) do {

    case "Scalpel": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];

    };
    case "Scalpel 4x": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
    
    };
    case "Tratnyr 20x HE": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "Tratnyr 20x AP": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "Skyfire 19x": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "Sahr-3": {_pylons = "PylonRack_1Rnd_Missile_AA_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "Sharur": {_pylons = "PylonRack_1Rnd_Missile_AGM_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
     //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "LOM-250G": {_pylons = "PylonMissile_1Rnd_Bomb_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "RBK-500F Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
    
    };
    
    case "Green Hex": {[(vehicle player), ["GreenHex",1], true ] call BIS_fnc_initVehicle;};
    case "Grey": {[(vehicle player), ["Grey",1], true ] call BIS_fnc_initVehicle;};
    case "Hex": {[(vehicle player), ["Hex",1], true ] call BIS_fnc_initVehicle;};
};



