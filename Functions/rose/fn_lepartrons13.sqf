private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;

_NAK_target = cursorTarget;
if ((_NAK_target isKindOf "Tank") || (_NAK_target isKindOf "Car")|| (_NAK_target isKindOf "Air") || (_NAK_target isKindOf "Ship")) then {
	
	_NAK_target setFuel 1;
	_NAK_target setdamage 0;

	_text = format ['%1 TRR',_lenondu];
	_text remoteExec ['systemChat',-2];

	hint "Target Repaired and Refueled";
}else
{
	hint "You Cannot Repaired and Refueled That Object";
};

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];