#include "CustomControlClasses.h"
class Ark_Clan_Selection
{
	idd = 2100;
	name = "ARK_Clan_Selection";
	movingEnable = false;
	enableSimulation = true;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0;
			y = safeZoneY + safeZoneH * 0;
			w = safeZoneW * 1.005;
			h = safeZoneH * 1.00111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,1};
			colorText[] = {0.5922,0.0078,0.4,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Skaikru_Select
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.655625;
			y = safeZoneY + safeZoneH * 0.55666667;
			w = safeZoneW * 0.095;
			h = safeZoneH * 0.06222223;
			style = 0+2;
			text = "Select";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {0,0,0,0.7547};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['skaikru'] call ARK_fnc_chooseClan;";
			//onButtonClick = "hint 'skaikru!'";
			
		};
		class Treekru_Select
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.2725;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.095;
			h = safeZoneH * 0.06222223;
			style = 0+2;
			text = "Select";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {0,0,0,0.7547};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['trikru'] call ARK_fnc_chooseClan";
			
		};
		class MountainMen_Select
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.46625;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.095;
			h = safeZoneH * 0.06222223;
			style = 0+2;
			text = "Select";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {0,0,0,0.7547};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['mountainmen'] call ARK_fnc_chooseClan;";
			
		};
		class Skaikru_Image
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.624375;
			y = safeZoneY + safeZoneH * 0.22555556;
			w = safeZoneW * 0.161875;
			h = safeZoneH * 0.28222223;
			style = 48;
			text = "icons\skaikru_logo.paa";
			colorBackground[] = {0.5843,0.298,0.3412,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class MountainMen_Image
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.431875;
			y = safeZoneY + safeZoneH * 0.22555556;
			w = safeZoneW * 0.161875;
			h = safeZoneH * 0.28222223;
			style = 48;
			text = "icons\mountainmen_logo.paa";
			colorBackground[] = {0.5843,0.298,0.3412,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Treekru_Image
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.241875;
			y = safeZoneY + safeZoneH * 0.22555556;
			w = safeZoneW * 0.161875;
			h = safeZoneH * 0.28222223;
			style = 48;
			text = "icons\trikru_logo.paa";
			colorBackground[] = {0.5843,0.298,0.3412,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
//		class Treekru_Text : RscText 
//		{
//			type = 0;
//			idc = 0;
//			x = safeZoneX + safeZoneW * 0.181875;
//			y = safeZoneY + safeZoneH * 0.42555556;
//			w = safeZoneW * 0.161875;
//			h = safeZoneH * 0.30666667;
//			style = 16;
//			text = "Treekru is one of 12 grounder clans. They specialize in farming, mediaval weaponry and crafting. Treekru hugely outnumbers both Skaikru and the mountain men.";
//			colorBackground[] = {0.5843,0.298,0.3412,0};
//			colorText[] = {0.702,0.702,0.702,1};
//			font = "PuristaMedium";
//			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
//			
//		};
//		class MountainMen_Text : RscText 
//		{
//			type = 0;
//			idc = 0;
//			x = safeZoneX + safeZoneW * 0.45410157;
//			y = safeZoneY + safeZoneH * 0.44965278;
//			w = safeZoneW * 0.08691407;
//			h = safeZoneH * 0.20833334;
//			style = 16;
//			text = "The Mountain men lives inside Mount Weather, they have technology and weapons at their exposal. But they can't move freely outside due to radiation.";
//			colorBackground[] = {0.5843,0.298,0.3412,0};
//			colorText[] = {0.702,0.702,0.702,1};
//			font = "PuristaMedium";
//			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
//			
//		};
//		class Skaikru_Text : RscText 
//		{
//			type = 0;
//			idc = 0;
//			x = safeZoneX + safeZoneW * 0.57617188;
//			y = safeZoneY + safeZoneH * 0.44965278;
//			w = safeZoneW * 0.08691407;
//			h = safeZoneH * 0.20833334;
//			style = 16;
//			text = "Skaikru, also known as the Sky People has just landed on Earth after spending a 100 years in space. Skaikru specialized in technology.";
//			colorBackground[] = {0.5843,0.298,0.3412,0};
//			colorText[] = {0.702,0.702,0.702,1};
//			font = "PuristaMedium";
//			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
//			
//		};
		
	};
	
};
