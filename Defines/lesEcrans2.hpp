//brother main menu
class nastynak 
{
	idd = 1000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA1";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Lusebi)
		////////////////////////////////////////////////////////
		class ecran4: RscPicture
		{
			moving = 0;

			idc = 12000;
			text = "Media\rug1.paa";
			x = 0.15875 * safezoneW + safezoneX;
			y = -0.116 * safezoneH + safezoneY;
			w = 0.721875 * safezoneW;
			h = 1.254 * safezoneH;
		};
			class RscCurrentbalencia: RscStructuredText
		{
			idc = 1997;

			x = 0.222538 * safezoneW + safezoneX;
			y = 0.75396 * safezoneH + safezoneY;
			w = 0.439687 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscButton_bOnOff: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0;";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.5 * safezoneW + safezoneX;
			y = 0.836 * safezoneH + safezoneY;
			w = 0.0344791 * safezoneW;
			h = 0.0523704 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
			tooltip = "Turn Off"; //--- ToDo: Localize;
		};
		class p1: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0;_this call CHVD_fnc_openDialog;";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.539375 * safezoneW + safezoneX;
			y = 0.84636 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
			tooltip = "View Distance Setting"; //--- ToDo: Localize;
		};
		class p2: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.568644 * safezoneW + safezoneX;
			y = 0.84748 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class p3: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.597387 * safezoneW + safezoneX;
			y = 0.84636 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class p4: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.62705 * safezoneW + safezoneX;
			y = 0.84524 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class le1: RscPicture
		{
			idc = 1201;

			text = "Media\images\1PlayerStats.paa";
			x = 0.244062 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;
		};
		class 1PlayerStats: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'lesplayer'";

			x = 0.244062 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class le2: RscPicture
		{
			idc = 1202;

			text = "Media\images\1stores.paa";
			x = 0.244062 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;
		};
		class 1stores: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadvileacelol'";

			x = 0.244062 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.14 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class le3: RscPicture
		{
			idc = 1203;

			text = "Media\images\1ServerRules.paa";
			x = 0.362187 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;
		};
		class le4: RscStructuredText
		{
			idc = 1204;

			text = "<a size='3' href='https://www.naksquad.net/FAQs/'><img image='Media\images\1FAQ.paa' /></a>"; //--- ToDo: Localize;
			x = 0.486875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le5: RscStructuredText
		{
			idc = 1205;

			text = "<a size='3' href='https://www.naksquad.net/mod-list/'><img image='Media\images\1ModIcon.paa' /></a>"; //--- ToDo: Localize;
			x = 0.611562 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le6: RscStructuredText
		{
			idc = 1206;

			text = "<a size='3' href='https://www.naksquad.net/'><img image='Media\images\1Website.paa' /></a>"; //--- ToDo: Localize;
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le7: RscStructuredText
		{
			idc = 1207;

			text = "<a size='3' href='https://www.naksquad.net/forum/viewforum.php?f=44'><img image='Media\images\1Feedback.paa' /></a>"; //--- ToDo: Localize;
			x = 0.611562 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le8: RscStructuredText
		{
			idc = 1208;

			text = "<a size='3' href='https://naksquad.net/teamspeaktrans/'><img image='Media\images\1TeamSpeak.paa' /></a>"; //--- ToDo: Localize;
			x = 0.486875 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le9: RscStructuredText
		{
			idc = 1209;

			text = "<a size='3' href='https://www.naksquad.net/donate/'><img image='Media\images\Donate8.paa' /></a>"; //--- ToDo: Localize;
			x = 0.362187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class le001: RscPicture
		{
			idc = 1210;

			text = "Media\images\1cellsignal.paa";
			x = 0.224375 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class RscStructuredText_111110: RscStructuredText
		{
			idc = 100011;

			x = 0.7625 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class le002: RscPicture
		{
			idc = 1212;

			text = "Media\images\1Battery.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0459375 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;

			text = "<t color='#ffc600'>Player Stats</t>"; //--- ToDo: Localize;
			x = 0.232062 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>Rules</t>"; //--- ToDo: Localize;
			x = 0.364187 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Faqs</t>"; //--- ToDo: Localize;
			x = 0.493875 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1103: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Mods</t>"; //--- ToDo: Localize;
			x = 0.616562 * safezoneW + safezoneX; //-.01
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Website</t>"; //--- ToDo: Localize;
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1105: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Shop</t>"; //--- ToDo: Localize;
			x = 0.249062 * safezoneW + safezoneX; 
			y = 0.57 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		};
		class RscStructuredText_1106: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Donations</t>"; //--- ToDo: Localize;
			x = 0.357187 * safezoneW + safezoneX; // -.005
			y = 0.57 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,0.784,0,1};
		};
		class RscStructuredText_1107: RscStructuredText
		{
			idc = 1107;

			text = "<t color='#ffc600'>TeamSpeak</t>"; //--- ToDo: Localize;
			x = 0.481875 * safezoneW + safezoneX; // +.01
			y = 0.57 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1108: RscStructuredText
		{
			idc = 1108;

			text = "<t color='#ffc600'>FeedBack</t>"; //--- ToDo: Localize;
			x = 0.61025 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class ruleclass: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'ipadlcrolla'";

			x = 0.355625 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class playersetting: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'playersetingg'";

			x = 0.73625 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class plasetting: RscStructuredText
		{
			idc = -1;

			text = "<t color='#ffc600'>Player Settings</t>"; //--- ToDo: Localize;
			x = 0.715688 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class leplayersett: RscPicture
		{
			idc = -1;

			text = "Media\images\PlayerSettings.paa";
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////





	};
};
