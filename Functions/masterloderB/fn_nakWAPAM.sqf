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
if (_lecallers >= AMMOCRATEWP) then
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

			_leresult = _lecallers - AMMOCRATEWP;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;
		
		_lodingtheb = ["6rnd_45acp_cylinder","handgrenade","30rnd_45acp_mag_smg_01_tracer_red","30rnd_545x39_mag_tracer_f","150rnd_556x45_drum_mag_tracer_f","30rnd_9x21_mag_smg_02_tracer_yellow","30rnd_9x21_yellow_mag","30rnd_9x21_mag_smg_02_tracer_red",
		"30rnd_9x21_mag_smg_02_tracer_green","200rnd_556x45_box_tracer_red_f","200rnd_556x45_box_tracer_f","30rnd_556x45_stanag_tracer_green","30rnd_556x45_stanag_tracer_red","30rnd_556x45_stanag_tracer_yellow","100rnd_580x42_mag_tracer_f","30rnd_580x42_mag_f","30rnd_580x42_mag_tracer_f",
		"100rnd_65x39_caseless_mag_tracer","200rnd_65x39_cased_box_tracer","30rnd_65x39_caseless_green_mag_tracer","30rnd_65x39_caseless_mag_tracer","150rnd_762x54_box_tracer",
		"150rnd_762x51_box_tracer","30rnd_762x39_mag_tracer_green_f","30rnd_762x39_mag_tracer_f"];
		
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
