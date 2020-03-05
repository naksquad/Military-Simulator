#include "..\..\DefinePrice.hpp"
_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Crate Drop System is not Available, Please Wait For The System To Cool Down";

};
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= LAUNCHERAMMOCRATE) then
{
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1]; 
		_roadrunner = missionNamespace getVariable "roadrunner";
		if (_roadrunner == 1) then 
		{	
			_mastragraba = missionNamespace getVariable "mastragraba";
			deleteVehicle _mastragraba;
		};
		playSound "AddItemOK";
		closeDialog 0;

			_leresult = _lecallers - LAUNCHERAMMOCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;
		
		_lodingtheb = ["NLAW_F","RPG32_F","RPG32_HE_F","Titan_AA","Titan_AT","Titan_AP","RPG32_F","RPG32_HE_F","RPG7_F","MRAWS_HEAT_F","MRAWS_HE_F"];
		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 
		{
			_leboxtosend addMagazineCargoGlobal [_x,5]; sleep 0.5;

		} foreach _lodingtheb;
		playSound "airdroppros"; sleep 1; playSound3D ["A3\Data_F_Warlords\sfx\flyby.wss", objNull, FALSE, (position player) vectorAdd [0, 0, 100]];
		missionNamespace setVariable ["mastragraba", _leboxtosend]; 
		missionNamespace setVariable ["roadrunner", 1]; 
		[_pos,_leboxtosend] call NAK_fnc_vbnetDropB;

		sleep COOLDOWNSYST;
		missionNamespace setVariable ["lock1", 0];
	};					
}
else
{
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};

