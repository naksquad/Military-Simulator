#include "..\DefinePrice.hpp"
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 1101) ctrlSetStructuredText parseText "
<t size= '1.3' align='center' underline='true' href='https://www.naksquad.net/nak-server-rules-2/' color='#fce253' >TS Rules</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #1)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > NO Racism.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #2)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No verbal abuse.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #3)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No excessive use of indecent; obscene; lewd; sexually explicit language – this includes any words generally considered curse words.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #4)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > Don’t send links that can harm the user’s computer.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #5)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No pornographic or explicit content.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #6)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No Recording</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #7)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No offensive or inflammatory nicknames or avatars.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #8)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > Please use a TS Nickname that matches your in-game profile name.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #9)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > All pilots, UAV and ATC must be in the Pilot Channel. If you are in the Pilots channel, you must follow the rules assigned to pilots.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #10)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No player in the “Pilots” channel may mute all communication.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #11)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No spamming.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #12)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No Inflammatory Topics.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #13)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No broadcasting of music in channel.</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #14)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No file transfers</t>
<br />
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#d1022b' >RULE #15)</t>
<t size= '1' align='left' href='https://www.naksquad.net/nak-server-rules-2/' color='#0b6bbf' > No recruiting</t>
<br />"

