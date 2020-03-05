#include "..\DefinePrice.hpp"
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 1101) ctrlSetStructuredText parseText "
<t size= '1.3' align='center' underline='true' href='https://www.naksquad.net/nak-server-rules/' color='#fce253' >In Game Rules</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #1)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > NO Racism.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #2)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Impersonating an admin.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #3)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Intentional Team Killing.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #4)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Griefing/Harassment.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #5)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Firing at base.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #6)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Wasting Server Assets.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #7)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Using Voice in Restricted Channels.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #8)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Using Vehicles as Taxi’s in Base.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #9)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Playing as infantry while in pilot slot.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #10)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Arguing with administration over punishment.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #11)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > All pilots, UAV operator, and ATC must be on the NAK SQUAD TeamSpeak server (excluding NAK Elite). No pilot may be AFK.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #12)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > Minimum age on our servers is 16.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #13)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > No verbal abuse.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #14)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > No use of indecent; obscene; lewd; sexually explicit language – this includes any words generally considered curse words.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#d1022b' >RULE #15)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules/' color='#0b6bbf' > No recruiting</t>
<br />"

