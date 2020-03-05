
//_neo = missionNameSpace getVariable "galileia_1";
//_trinity = missionNameSpace getVariable "galileia_3";
//{if(isClass(configfile >> "CfgPatches" >> _X)) then { "end6" call BIS_fnc_endMission;};} foreach _neo;
//{if(isClass(configfile >> "CfgMods" >> _X)) then { "end6" call BIS_fnc_endMission;};} foreach _trinity;

_profileName = name player;
_patchList = missionNameSpace getVariable "galileia_1";
_binConfigPatches = configFile >> 'CfgPatches';
private _patchConfigName = '';
for '_i' from 0 to ((count _binConfigPatches) - 1) step 1 do {
_patchEntry = _binConfigPatches select _i;
	if (isClass _patchEntry) then {
	_patchConfigName = toLower (configName _patchEntry);
		if (_patchConfigName in _patchList) then {
		_text = format ['%1 is using a restricted mod %2, kicking to lobby.',_profileName,_patchConfigName];
		_text remoteExec ['systemChat',-2];
		sleep 5;
		failMission "end6";
		};
	};
};

_trinity = missionNameSpace getVariable "galileia_3";
_binConfigMods = configFile >> 'CfgMods';
private _patchConfigMod = '';
for '_i' from 0 to ((count _binConfigMods) - 1) step 1 do {
_ModEntry = _binConfigMods select _i;
	if (isClass _ModEntry) then {
	_patchConfigMod = toLower (configName _ModEntry);
		if (_patchConfigMod in _trinity) then {
		_text = format ['%1 is using a restricted mod %2, kicking to lobby.',_profileName,_patchConfigMod];
		_text remoteExec ['systemChat',-2];
		sleep 5;
		failMission "end6";
		};
	};
};