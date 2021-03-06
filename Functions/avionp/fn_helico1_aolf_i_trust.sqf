  private ["_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_v","_ctrl","_pylonsLoadout","_pylonPaths","_pylons","_index"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo (vehicle player);

 if (isEngineOn (vehicle player)) exitWith {hint parseText _tooLow};
  if (fuel (vehicle player) < 0.980000) exitWith {hint parseText _tooLowfuel};
_v = (vehicle player);							

_ctrl = _this # 0;_index = _this # 1;
_pylonsLoadout = _ctrl lbText _index;

switch (_pylonsLoadout) do {
    case "Custom loadout 1": {  _pylons = 	["PylonRack_1Rnd_AAA_missiles","PylonRack_1Rnd_LG_scalpel"];
 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _v >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ _v removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _v;
{ _v setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons; };
    case "Custom loadout 2": {  _pylons = 	["PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_missiles"];
 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _v >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ _v removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _v;
{ _v setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons; };
    case "Custom loadout 3": { _pylons = ["PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F"];
 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _v >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ _v removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _v;
{ _v setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons; };
 
};


  
