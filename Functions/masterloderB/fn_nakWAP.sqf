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
if (_lecallers >= WEAPONCRATE) then
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

			_leresult = _lecallers - WEAPONCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01; 
		_pos = getpos player;
		
		_lodingtheb = ["srifle_DMR_01_F","srifle_EBR_F","srifle_GM6_F","srifle_DMR_01_SOS_F","srifle_LRR_F","LMG_Mk200_F","LMG_Zafir_F","hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_MRD_F","hgun_Rook40_F","arifle_Katiba_F","arifle_Mk20_F","arifle_MXC_F","arifle_SDAR_F","hgun_PDW2000_F","SMG_01_F","SMG_02_F",
						"srifle_DMR_02_F","srifle_DMR_03_F","srifle_DMR_04_F","LMG_Mk200_LP_BI_F","arifle_MX_khk_F","srifle_LRR_tna_F","hgun_P07_khk_F","arifle_AK12_F","arifle_AKM_F","arifle_AKS_F","arifle_ARX_Viper_F","arifle_CTAR_blk_F","arifle_CTAR_blk_ARCO_F"];
		
		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText;
		{
			_leboxtosend addWeaponCargoGlobal [_x,1]; sleep 0.5;

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
