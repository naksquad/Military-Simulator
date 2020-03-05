	_dispay = _this # 0;
	disableSerialization;
	private _nows = date; 
	private _hours = _nows select 3;
	private _mins  = _nows select 4;
	_themasterrankin = missionNamespace getVariable "themasterrankin";
	if (isNil "_themasterrankin") then
	{
		missionNamespace setVariable ["themasterrankin", 0]; 
		_themasterrankin = 0;
	};

	(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hours,_mins];
	(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];
