//brother pad on static menu
class ipadlcrolla
{
	idd = -1;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA1";

	
	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Kuvyby)
		////////////////////////////////////////////////////////

			class ecran1: RscPicture
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
			onMouseButtonClick = "closeDialog 0; createDialog 'nastynak'";
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
			tooltip = "Back"; //--- ToDo: Localize;
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
		class le6: RscPicture
		{
			idc = 1206;

			text = "Media\images\1Website.paa";
			x = 0.283437 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;

		};
		class le8: RscPicture
		{
			idc = 1208;

			text = "Media\images\1TeamSpeak.paa";
			x = 0.467187 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.038 * safezoneW;
			h = 0.067555 * safezoneH;
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
		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>  In-Game Rules</t>"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1107: RscStructuredText
		{
			idc = 1107;

			text = "<t color='#ffc600'>TeamSpeak Rules</t>"; //--- ToDo: Localize;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.124687 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class classwebsite: RscButton
		{
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			idc = 1110;
			onMouseButtonClick = "closeDialog 0;createDialog 'ipadmwalker'";

			x = 0.276875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class classteamspeak: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'ipadlorenzo'";

			x = 0.454062 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		///////////////////////////////////////////////////////	
	};
};
