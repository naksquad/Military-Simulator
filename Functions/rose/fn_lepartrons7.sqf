_theadmins = _this # 0;
removeAllActions _theadmins;

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];

[_theadmins] remoteExecCall ["ROSE_fnc_lepartrons8", -2, false];

