_theadmins = _this # 0;
removeAllActions _theadmins;



 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];



_Morpheus = [];
_leuav = [];
_leatc = [];
{
   
    if (typeOf _x == "B_Pilot_F") then {
        _Morpheus pushBack name _x;
    };
    if (typeOf _x == "B_soldier_UAV_F") then {
        _leuav pushBack name _x;
    };
    if (typeOf _x == "B_RangeMaster_F") then {
        _leatc pushBack name _x;
    };
   
} forEach playableUnits;

_ineedhelp = composeText [parsetext format ["<img size='7' image='Media\images\nakcommand.paa'/><br/><t size='1.2' align='left' color='#f7ce00'>PILOT Slot: %1 <br/><t size='1.2' align='left' color='#5160c2'>UAV Slot: %2 <br/><t size='1.2' align='left' color='#eb0c0c'>ATC Slot %3 ",  _Morpheus, _leuav, _leatc]];

hint _ineedhelp;

