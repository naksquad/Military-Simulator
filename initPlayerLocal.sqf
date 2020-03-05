//AOFL
#include "unitDefines.hpp"
missionNamespace setVariable ["lock1", 0];
missionNamespace setVariable ["roadrunner", 0];
missionNamespace setVariable ["mastragraba", 0];
missionNamespace setVariable ["lejoueur", player];
missionNamespace setVariable ["Dandegreous", 0];
missionNamespace setVariable ["lesorelle", 1];
missionNamespace setVariable ["villeaceDBblock", 0];
missionNamespace setVariable ["getinpos", 0];
missionNamespace setVariable ["getinplock", 0];
missionNamespace setVariable ["theskinner", 0];
missionNamespace setVariable ["thecmopskin", 0];
missionNamespace setVariable ["theskcpveh", 0];
missionNamespace setVariable ["atrapelacoleur", 0];

missionNamespace setVariable ["lacouleur1", 0];
missionNamespace setVariable ["lacouleur2", 0];
missionNamespace setVariable ["lacouleur3", 0];
missionNamespace setVariable ["lacouleur4", 1];

missionNamespace setVariable ["lesnondesjouer", 0];
	uidd = getPlayerUID player;
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	0 enableChannel [true, false];
	1 enableChannel [true, false];
	2 enableChannel [true, false];
};
missionNamespace setVariable ["lespect", 0];

_pilotGunnerah99 = ["","","","","",""];
missionNamespace setVariable ["pilotGunnerah99", _pilotGunnerah99];

_pilotGunnerkaj = ["","","",""];
missionNamespace setVariable ["pilotGunnerkaj", _pilotGunnerkaj];

_pilotGunnergrey = ["",""];
missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

_pilotGunnersent = ["",""];
missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

_pilotGunnermq = ["","","",""];
missionNamespace setVariable ["pilotGunnermq", _pilotGunnermq];

_pilotGunnervt1 = ["","","",""];
missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];

_pilotGunnervt2 = ["","","",""];
missionNamespace setVariable ["pilotGunnervt2", _pilotGunnervt2];

[] execVM "fn_villagers.sqf";

/*
player addMPEventHandler  ["mpkilled", {
	_unit = _this # 0; 
	_killer = _this # 1; 
	vehicle _killer setAmmo [currentWeapon vehicle _killer, 0]; 
	_uidr = getPlayerUID _killer;
	_unituid = getPlayerUID _unit;
	_truenumba =0;
	if(player != _unit)then{
		if(side _killer == west)then{
			[_uidr] spawn ROSE_fnc_aveMaria1;
		}; 
	}; 
	deleteVehicle _unit;
}];*/


if !(isnil {profileNamespace getVariable "LAltitudeP"}) then {
	missionNamespace setVariable ["LAltitude", (profileNamespace getVariable "LAltitudeP")];
	missionNamespace setVariable ["NAK_iconColor", (profileNamespace getVariable "NAK_iconColorP")];
	missionNamespace setVariable ["NAK_iconColor1", (profileNamespace getVariable "NAK_iconColor1P")];
	missionNamespace setVariable ["lesniperpour", (profileNamespace getVariable "lesniperpourP")];
	missionNamespace setVariable ["lesniperpour1", (profileNamespace getVariable "lesniperpour1P")];
	} else {
		missionNamespace setVariable ["LAltitude", 600];
		missionNamespace setVariable ["NAK_iconColor", [0,125,255]];
		missionNamespace setVariable ["NAK_iconColor1", [0,125,255]]; 
		missionNamespace setVariable ["lesniperpour", 0.1];
		missionNamespace setVariable ["lesniperpour1", 0.1];
	};

if !(isnil {profileNamespace getVariable "hexdistanceP"}) then {
	missionNamespace setVariable ["hexdistance", (profileNamespace getVariable "hexdistanceP")];
	
	} else {
		missionNamespace setVariable ["hexdistance", 2500];
		
	};


if (isDedicated) exitwith {};
if (hasInterface) then {
	_lemonde = worldName;
	enableSaving false;
	enableSentences false;
	waitUntil {time > FIVEBUFFER};
	enableEnvironment [false, true];
	enableEngineArtillery false;
	removeAllAssignedItems player;
	player addWeapon "ItemMap";
	player addRating 1000000;
	player enablestamina false;
	player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");
	player setUnitRecoilCoefficient (missionNameSpace getVariable "lesniperpour1");
	player enableFatigue FALSE;
	if (player isKindOf "B_support_Mort_f") then {enableEngineArtillery true;};
	["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
	_dataplayrowner = clientOwner;

	_respawnWest = getMarkerPos "respawn_west";
	CHVD_allowNfoGrass = true; 
	missionNamespace setVariable ["checkrevive", 0, _dataplayrowner];
	3 fademusic 0.5;
	playmusic selectRandom TRACKE;

	[player,_dataplayrowner,uidd] spawn ROSE_fnc_lekillerspawn;

	switch (_lemonde) do {
    case "Altis": { billboard_18 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_19 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_20 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_2 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_3 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_12 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_13 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers3.paa"];
					billboard_16 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers4.paa"];
					billboard_17 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Units1.paa"];
					billboard_8 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_4 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_11 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_5 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_10 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_6 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_7 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_9 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_14 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_1 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_15 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers3.paa"];
					billboard_21 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_22 setObjectTexture [FIVEBUFFER,"media\Billboards\TransportDepartures.paa"];
					billboard_23 setObjectTexture [FIVEBUFFER,"media\Billboards\TP_TRANSPORT.paa"];
					billboard_24 setObjectTexture [FIVEBUFFER,"media\Billboards\TP_TRANSPORT.paa"];
					billboard_25 setObjectTexture [FIVEBUFFER,"media\Billboards\TP_TRANSPORT.paa"];
					sleep SARAHBUFFER; 
				};
    case "Malden": {billboard_18 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_19 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_20 setObjectTexture [FIVEBUFFER,"media\Billboards\para.paa"];
					billboard_2 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_3 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_12 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_13 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers1.paa"];
					billboard_16 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers2.paa"];
					billboard_17 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Units1.paa"];
					billboard_8 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_4 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_11 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_5 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_10 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_6 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_7 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_9 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_14 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_1 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_15 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers2.paa"]; 
					sleep SARAHBUFFER;
				};
    case "Tanoa": { billboard_4 setObjectTexture [FIVEBUFFER,"media\Billboards\bill7.paa"];
					billboard_2 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_1 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules1.paa"];
					billboard_3 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					screen_1 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers1.paa"];
					Screen_2 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Rules2.paa"];
					billboard_6 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_WebAcct.paa"];
					billboard_7 setObjectTexture [FIVEBUFFER,"media\Billboards\NEWBillboard_Servers2.paa"];
					Screen_3 setObjectTexture [FIVEBUFFER,"media\Billboards\bill6.paa"];
					sleep SARAHBUFFER;
				};
	};

	[[[localize "STR_DOM_MISSIONSTRING_0","<t size='1.0' font='RobotoCondensed'>%1</t><br/>", FIVEBUFFER],[name player,"<t size='1.0' font='RobotoCondensed'>%1</t><br/>", SARAHBUFFER],[localize "STR_DOM_MISSIONSTRING_1","<t size='0.9'>%1</t><br/>", V04]	], -safezoneX,V05,"<t color='#FFFFFFFF' align='right'>%1</t>"] spawn bis_fnc_typeText;

	sleep 9;
	createdialog "lesreglesdujeux";
	[missionNamespace, "arsenalClosed",{
		player setVariable ["Saved_Loadout",getUnitLoadout player];
		if (uniform player in SACADO) then {
			removeUniform player;
			titleText [SACADO_MSG, "PLAIN DOWN", 0.7, true, true];
		}; 

		if (backpack player in LESACS) then {
			removeBackpack player;
			titleText [LESACS_MSG, "PLAIN DOWN", 0.7, true, true];
		};

		if (backpack player in UAVSACS) then {
		if (({player isKindOf _x} count uavOperator) < 1) then {
				removeBackpack player;
				titleText [UAVSAC_MSG, "PLAIN DOWN", 0.7, true, true];
			};
		};

/* 		if (magazines player in LESMAGS) then {
			removeAllWeapons player;
			removeAllAssignedItems player;
			removeAllContainers player;
			{player removeMagazine _x} forEach magazines player;
			titleText [AUTOTUR_MSG, "PLAIN DOWN", 0.7];
		}; */
//VileAce Added
		_MagArray = magazines player + [magazines player] + [primaryWeaponMagazine player] + [handgunMagazine player] + [secondaryWeaponMagazine player] + [currentMagazine player];
		{if (_x in LESMAGS) then {
			player setAmmo [primaryWeapon player, 0];
			player setAmmo [handgunWeapon player, 0];
			player setAmmo [secondaryWeapon  player, 0];
			player removeMagazines _x;
			titleText [AUTOTUR_MSG, "PLAIN DOWN", 0.7, true, true];
		};} forEach _MagArray;

		_assignedItems = assignedItems player;
		if (({"B_UavTerminal" == _x} count (assignedItems player)) > 0) then {
			if (({player isKindOf _x} count uavOperator) < 1) then {
				player unassignItem "B_UavTerminal";
				player removeItem "B_UavTerminal";
				titleText [UAV_MSG,"PLAIN DOWN",0.7, true, true];
			};
		};
	}] call BIS_fnc_addScriptedEventHandler;
	player setVariable ["Saved_Loadout",getUnitLoadout player];
	(findDisplay 46) displayAddEventHandler ["KeyDown", {if (_this # 1 == 197 || _this # 1 == 210 ) then {         
	switch (missionNamespace getVariable 'lesorelle') do {
		case 1: { missionNamespace setVariable ['lesorelle', 2]; 2 fadeSound 0.1;  hint 'EARPLUGS FITTED'; };
		case 2: { missionNamespace setVariable ['lesorelle', 1]; 2 fadeSound 1;  hint 'EARPLUGS REMOVED'; };
		};
	}; 
	
	if (uidd in (missionNameSpace getVariable "guirer")) then {  
		if ( _this # 1 == 24 ) then { 
			
			player addAction ["<t color='#b71919'>---Admins Ghetto Menu---</t>",{_this spawn ROSE_fnc_lepartrons6;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Check Server Current Pilot</t>",{_this spawn ROSE_fnc_lepartrons4;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Spectator</t>",{_this spawn ROSE_fnc_lepartrons5;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Pilot TS Warning</t>",{_this spawn ROSE_fnc_lepartrons7;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Delete Mine (500 m Raduis)</t>",{_this spawn ROSE_fnc_lepartrons10;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>NAK Map Jump</t>",{_this spawn ROSE_fnc_lepartrons11;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>NAK Delete Vehicle</t>",{_this spawn ROSE_fnc_lepartrons12;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#26de0d'>NAK Repair and Refuel</t>",{_this spawn ROSE_fnc_lepartrons13;},[],1,false,true,"","player == _originalTarget"];
			player addAction ["<t color='#b71919'>---More Options Soon---</t>",{_this spawn ROSE_fnc_lepartrons6;},[],1,false,true,"","player == _originalTarget"];
			
		};
	};
	//Added VileAce prevent Y -Zeus key press
	_c = false;
		if !(uidd in (missionNameSpace getVariable "guirer")) then {
			if !(_this # 2 || _this # 3 || _this # 4) then {
				if (_this # 1 in (actionKeys "curatorInterface")) then {
					hint "Please do not ping the Zeus/Admin";
					_c = true;
				};
			};
		};
	}];

	player addEventHandler ["HandleHeal", {
		_this spawn {
			params ["_injured","_healer"];
			missionNamespace setVariable ['Health',getDammage _injured,FALSE];
			_damage = Health;
			if (_injured == _healer) then {
				waitUntil { damage _injured != _damage };
				if (damage _injured < _damage) then {
					titletext ["You are healed", "PLAIN DOWN"];
					_injured setDamage 0;
				};
			};
		};
	}];

//Added VileAce
if (uidd in (missionNameSpace getVariable "guirer")) then {  
	player addEventHandler ["GetInMan", {
		if ({ isPlayer _x } count crew (_this select 2) > 0) then {
				(_this select 2) forceFlagTexture "Media\Images\NAKCommandFlagDark.paa";
				(_this select 2) setPlateNumber (name player);
			}
	}];
	 
	player addEventHandler ["GetOutMan", {
		if ({ isPlayer _x } count crew (_this select 2) == 0) then {
			(_this select 2) forceFlagTexture "";
			(_this select 2) setPlateNumber "";
		}
	}];
};

	_lestasks = ["aoTask111","aoTask112","aoTask113","tankTask","tankTasks","aoTask1","aoTask2","aoTask3","aoTask4","aoTask6","aoTask10","aoTask11","aoTask12","aoTask15","MainAoTask","mamanAoTask","aoTask16","priorArtyTask","hqResearchTask","secureChopperTask"];
	sleep 1;
	{ [_x ,"ASSIGNED", false] call BIS_fnc_taskSetState;} foreach _lestasks;

	_image1 = "<img size='7' image='Media\images\naksquad1.paa'/><br/>";
	_image2 = "<img size='7' image='Media\images\nakcommand.paa'/><br/>";
	_image3 = "<img size='7' image='Media\images\NAKSquadFlagWhite.paa'/><br/>";
	_EarPlugsTakenHint  = "<t color='#ab2b2c' size='1.3' shadow='1' shadowColor='#000000' align='center'>Earplugs</t><br/>";     
	_HowtoEarPlugsHint = "<t  size='1' shadow='1' shadowColor='#000000' align='center'>Insert and Remove your Earplugs with key (Pause/Break) or (Insert)</t><br/><br/>";   
	_PlayerJumpHint  = "<t color='#123b63' size='1.3' shadow='1' shadowColor='#000000' align='center'>Player Jump</t><br/>";    
	_HowtoJumpHint = "<t  size='1' shadow='1' shadowColor='#000000' align='center'>Hold run/sprint (SHIFT) and 'GET OVER' (default 'v' key) for jumping</t><br/><br/>"; 
	_HolsterHint  = "<t color='#dd9b1f' size='1.3' shadow='1' shadowColor='#000000' align='center'>Holster  Weapon</t><br/>";
	_HowtoHolsterHint = "<t  size='1' shadow='1' shadowColor='#000000' align='center'>Holster your Weapon with key (H)</t><br/><br/>";
	_ReviveHint = "<t color='#fce253' size='1.3' shadow='1' shadowColor='#000000' align='center'>Initiate Medical Hotkey</t><br/>";
	_HowtoRevive = "<t  size='1' shadow='1' shadowColor='#000000' align='center'>Use Custom Controls > User Action 20 to Initiate Medical</t><br/><br/>";
	_ViewSettingHint = "<t color='#b7b7b7' size='1.3' shadow='1' shadowColor='#000000' align='center'>View Settings</t><br/>";
	_HowtoViewSettingHint = "<t  size='1' shadow='1' shadowColor='#000000' align='center'>To change View Settings with CBA_A3 (CTRL + Backslash) without CBA_A3 while on foot select View Settings from the action menu.</t>";
	_lacle = selectRandom [1,2,3];
	sleep 30;
	switch (_lacle) do {
	case 1: {hint parseText (_image1 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);};
	case 2: {hint parseText (_image2 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);};
	case 2: {hint parseText (_image3 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);};
	};
};









