//brother supply drop menu
class ipadmycasper
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn MTLDB_fnc_VA6";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Foxije)
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
		class classLAAC: RscPicture
		{
			idc = 1201;

			text = "Media\images\LauncherAmmo.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class classWPC: RscPicture
		{
			idc = 1203;

			text = "\a3\ui_f\data\gui\rsc\rscdisplayarsenal\primaryweapon_ca.paa";
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class classLAC: RscPicture
		{
			idc = 1204;

			text = "\a3\ui_f\data\gui\rsc\rscdisplayarsenal\secondaryweapon_ca.paa";
			//text = "Media\images\ammopic.paa";
			x = 0.42125 * safezoneW + safezoneX;
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
		class RscStructuredSAT: RscStructuredText
		{
			idc = 1100;

			text = "<t color='#ffc600'>  Launcher Ammo Crate</t>"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_classWPC: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>   Weapons Crate</t>"; //--- ToDo: Localize;
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_Mk30Raised: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>              Launcher Crate</t>"; //--- ToDo: Localize;
			x = 0.375313 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscStructuredText_Mk30A: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>    Weapons Ammo Crate</t>"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class classWAAC: RscPicture
		{
			idc = 1204;
			text = "\a3\ui_f\data\gui\rsc\rscdisplayarsenal\cargomagall_ca.paa";
			//text = "Media\images\ammopic.paa";
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
		class classWPCC: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakWAP";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.244063 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.154 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class RscButton_LAAC: RscButton
		{
			idc = 12004;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakWAPLAM";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.690312 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.154 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class weaponAmmoCrate: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakWAPAM";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.545937 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.154 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class launchercrate: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakWAPL";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.401563 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.168 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////


	};
};
