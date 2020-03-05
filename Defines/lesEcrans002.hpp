//brother Shop main menu
class ipadvileacelol 
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA3";

	
	class controls 
	{
		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Nogipa)
		////////////////////////////////////////////////////////
		class ecran3: RscPicture
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
		class le1: RscPicture
		{
			idc = 1201;

			text = "Media\images\secscan.paa";
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class sectorscanc: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this execVM 'Scripts\masterscan\VAhpscannerai.sqf';";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.26375 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class le2: RscPicture
		{
			idc = 1202;

			text = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa";
			x = 0.467187 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class autoreviveC: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this execVM 'Scripts\masterscan\VArevive.sqf';";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.467187 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.112 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class le3: RscPicture
		{
			idc = 1203;

			text = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa";
			x = 0.375313 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class reviveMedicc: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this execVM 'Scripts\masterscan\VAaiRevive.sqf';";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.381875 * safezoneW + safezoneX;
			y = 0.178 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.112 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class ammocratecpic: RscPicture
		{
			idc = 1205;

			text = "\a3\ui_f\data\gui\cfg\communicationmenu\supplydrop_ca.paa";
			x = 0.591875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class staticdroppic: RscPicture
		{
			idc = 1206;

			text = "\a3\Static_f_gamma\data\ui\gear_StaticTurret_MG_CA.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
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

			text = "<t color='#ffffff'>       Sector Scan</t>"; //--- ToDo: Localize;
			x = 0.241437 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffffff'>      AI Revive</t>"; //--- ToDo: Localize;
			x = 0.358512 * safezoneW + safezoneX;
			y = 0.40284 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1103: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffffff'>Static Weapon Drop</t>"; //--- ToDo: Localize;
			x = 0.703437 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffffff'>      Supply Drop</t>"; //--- ToDo: Localize;
			x = 0.559062 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_1105: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffffff'>Auto Revive</t>"; //--- ToDo: Localize;
			x = 0.460625 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		};
		class ammodropC: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadmycasper'";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.585312 * safezoneW + safezoneX;
			y = 0.178 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class staticdroC: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadmyfoxy'";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.696875 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.126 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////




	};
};
