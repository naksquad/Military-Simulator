
_theadmins = _this # 0;
removeAllActions _theadmins;
missionNamespace setVariable ["lespect", 1];
 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];

   hint format [" Exit Button added to the Esc Menu"];

["Initialize", [_theadmins, [west], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
