private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;

_NAK_target = cursorTarget;
if ((_NAK_target isKindOf "Tank") || (_NAK_target isKindOf "Car")|| (_NAK_target isKindOf "Air") || (_NAK_target isKindOf "Ship")) then {
	deleteVehicle _NAK_target;

	_text = format ['%1 TD',_lenondu];
	_text remoteExec ['systemChat',-2];

	hint "Target Deleted";
}else
{
	hint "You Cannot Delete That Object";
};

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];