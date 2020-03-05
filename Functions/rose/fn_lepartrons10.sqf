private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

_Mines = allMines; 
_mineCount = 0;
{
	if ((_theadmins distance _x) < 500) then {
	deleteVehicle _x;
	_mineCount = _mineCount + 1
	};
} forEach _Mines;

_text = format ['%1 RM, %2',_lenondu,_mineCount];
_text remoteExec ['systemChat',-2];

hint format ["%1 Mines Deleted",_mineCount];
			
 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
