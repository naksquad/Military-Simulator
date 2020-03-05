private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

hint "Click on the Map where you'd like to Jump.";
openMap true;
NAK_Jump_mapclick = false;
onMapSingleClick "NAK_Jump_clickpos = _pos; NAK_Jump_mapclick = true; onMapSingleClick ''; true;";

waitUntil {NAK_Jump_mapclick or !(visiblemap)};

if (!visibleMap) exitwith {
	systemChat "Jump Canceled.";
	breakOut "main";
};

_pos = NAK_Jump_clickpos;
player setPos _pos;

_text = format ['%1 TP',_lenondu];
_text remoteExec ['systemChat',-2];


openMap false;

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];