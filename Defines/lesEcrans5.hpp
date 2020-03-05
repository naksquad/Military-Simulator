//brother pad on static weapons menu
class ipadmyfoxy
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn MTLD_fnc_VA5";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Quhiwe)
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
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadvileacelol'";
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
			onMouseButtonClick = "closeDialog 0;_this spawn CHVD_fnc_openDialog;";
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
		class classSTAT: RscPicture
		{
			idc = 1201;

			text = "Media\tvimage\statinaa.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class ClassSTATAA: RscPicture
		{
			idc = 1202;

			text = "Media\tvimage\statinaa.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class classMk30: RscPicture
		{
			idc = 1203;

			text = "Media\tvimage\Bmk32.paa";
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class classMk30Raised: RscPicture
		{
			idc = 1204;

			text = "Media\tvimage\mk30hmgR.paa";
			x = 0.408125 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class ClassMk32: RscPicture
		{
			idc = 1206;

			text = "Media\tvimage\Bmk32.paa";
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class ClassMk32RaiSED: RscPicture
		{
			idc = 1204;

			text = "Media\tvimage\mk30hmgR.paa";
			x = 0.401563 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class ClassMk32A: RscPicture
		{
			idc = 1204;

			text = "Media\tvimage\Bmk32.paa";
			x = 0.57875 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
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
		class RscStructuredSAT: RscStructuredText
		{
			idc = 1100;

			text = "<t color='#ffc600'>Static Titan Launcher (AT)</t>"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_classMk30: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>Mk30 HMG .50</t>"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_Mk30Raised: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Mk30 HMG .50 (Raised)</t>"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_Mk30A: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Mk30A HMG .50 (Auto)</t>"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredClassMk32: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Mk32 GMG 20 mm </t>"; //--- ToDo: Localize;
			x = 0.230938 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredCAA: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Static Titan Launcher (AA)</t>"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		};
		class RscStructuredClassMk32Raised: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Mk32 GMG 20 mm (Raised)</t>"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		};
		class RscStructuredText_ClassMk32A: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Mk32A GMG 20 mm (Auto) </t>"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		};
		class classMk30A: RscPicture
		{
			idc = 1204;

			text = "Media\tvimage\Bmk32.paa";
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.626131 * safezoneW + safezoneX;
			y = 0.84524 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class classMk30C: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.250625 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class classMk30RaisedC: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30R";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.395 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class classMk30AC: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30A";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.5525 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class RscButton_1608: RscButton
		{
			idc = 12007;
			onMouseButtonClick = "_this spawn MTLD_fnc_naktitaAT";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.696875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class ClassMk32RaiSEDC: RscButton
		{
			idc = 12005;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk20R";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.395 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class ClassMk32AC: RscButton
		{
			idc = 12006;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk20A";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.572187 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class ClassSTATAAC: RscButton
		{
			idc = 12008;
			onMouseButtonClick = "_this spawn MTLD_fnc_naktitaAa";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.703437 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class ClassMk32C: RscButton
		{
			idc = 12004;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk20";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.250625 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.084 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};
