#include "CustomControlClasses.h"
class ARK_Skill_Tree
{
	idd = 300;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.2375;
			y = safeZoneY + safeZoneH * 0.15111112;
			w = safeZoneW * 0.525;
			h = safeZoneH * 0.69888889;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Background_Description
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.30111112;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.45555556;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Background_TopMenu
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.2475;
			y = safeZoneY + safeZoneH * 0.19555556;
			w = safeZoneW * 0.375;
			h = safeZoneH * 0.08;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Background_SkillTree
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.246875;
			y = safeZoneY + safeZoneH * 0.30111112;
			w = safeZoneW * 0.374375;
			h = safeZoneH * 0.45444445;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Progress_Bar
		{
			type = 8;
			idc = 301;
			x = safeZoneX + safeZoneW * 0.2475;
			y = safeZoneY + safeZoneH * 0.79333334;
			w = safeZoneW * 0.49875;
			h = safeZoneH * 0.04555556;
			style = 0;
			colorBar[] = {0.6,0.6,0.6,1};
			colorFrame[] = {1,1,1,1};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class Progress_Title_Text
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.235;
			y = safeZoneY + safeZoneH * 0.75444445;
			w = safeZoneW * 0.525;
			h = safeZoneH * 0.04;
			style = 0;
			text = "Progress to Next Level:";
			colorBackground[] = {0.8157,0.8863,0.3412,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class SkillTree_Line1
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30875;
			y = safeZoneY + safeZoneH * 0.65111112;
			w = safeZoneW * 0.25375;
			h = safeZoneH * 0.00666667;
			style = 0;
			text = "";
			colorBackground[] = {0.902,0.902,0.902,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class SkillTree_Line2
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30875;
			y = safeZoneY + safeZoneH * 0.33;
			w = safeZoneW * 0.00375;
			h = safeZoneH * 0.32777778;
			style = 0;
			text = "";
			colorBackground[] = {0.902,0.902,0.902,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class SkillTree_Line3
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.43375;
			y = safeZoneY + safeZoneH * 0.33;
			w = safeZoneW * 0.00375;
			h = safeZoneH * 0.40111112;
			style = 0;
			text = "";
			colorBackground[] = {0.902,0.902,0.902,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class SkillTree_Line4
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.55875;
			y = safeZoneY + safeZoneH * 0.33;
			w = safeZoneW * 0.00375;
			h = safeZoneH * 0.32777778;
			style = 0;
			text = "";
			colorBackground[] = {0.902,0.902,0.902,1};
			colorText[] = {0.9961,0.2431,0.9882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Skill_Description
		{
			type = 0;
			idc = 304;
			x = safeZoneX + safeZoneW * 0.6325;
			y = safeZoneY + safeZoneH * 0.37444445;
			w = safeZoneW * 0.1175;
			h = safeZoneH * 0.22555556;
			style = 16;
			text = "Bleeding stops 20% faster.                                                               Hunger and Thirst decreases 10% slower";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.949,0.949,0.949,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Available_Skill_Points
		{
			type = 0;
			idc = 306;
			x = safeZoneX + safeZoneW * 0.628125;
			y = safeZoneY + safeZoneH * 0.18333334;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.06444445;
			style = 2;
			text = "25";
			colorBackground[] = {0.2,0.2,0.2,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 8) * 1);
			
		};
		class Skill_Title
		{
			type = 0;
			idc = 302;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.30111112;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.04;
			style = 0;
			text = "Survival Essentials";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.949,0.949,0.949,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Skill_Cost
		{
			type = 0;
			idc = 303;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.32555556;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.04;
			style = 0;
			text = "1 Point";
			colorBackground[] = {0.2,0.2,0.2,0.0283};
			colorText[] = {0.6,0.8,0.6,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Points_Available_Static
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63125;
			y = safeZoneY + safeZoneH * 0.24888889;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.04;
			style = 2;
			text = "Points Available";
			colorBackground[] = {0.2,0.2,0.2,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Menu_Title
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.246875;
			y = safeZoneY + safeZoneH * 0.15444445;
			w = safeZoneW * 0.119375;
			h = safeZoneH * 0.04;
			style = 0;
			text = "Skill Menu";
			colorBackground[] = {0.2,0.2,0.2,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "EtelkaMonospaceProBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Survivor
		{
			type = 1;
			idc = 317;
			x = safeZoneX + safeZoneW * 0.25125;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.07125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Survival";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Combat
		{
			type = 1;
			idc = 318;
			x = safeZoneX + safeZoneW * 0.325625;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.07125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Combat";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Research
		{
			type = 1;
			idc = 319;
			x = safeZoneX + safeZoneW * 0.4;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.07125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Research";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Crafting
		{
			type = 1;
			idc = 320;
			x = safeZoneX + safeZoneW * 0.474375;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.07125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Crafting";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Farming
		{
			type = 1;
			idc = 321;
			x = safeZoneX + safeZoneW * 0.54875;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.07125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Farming";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Technology
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.20555556;
			w = safeZoneW * 0.0875;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Technology";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Entry_Skill
		{
			type = 1;
			idc = 307;
			x = safeZoneX + safeZoneW * 0.37875;
			y = safeZoneY + safeZoneH * 0.68111112;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Survival Essentials";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_1_1
		{
			type = 1;
			idc = 308;
			x = safeZoneX + safeZoneW * 0.25375;
			y = safeZoneY + safeZoneH * 0.55888889;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Health Boost";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_1_2
		{
			type = 1;
			idc = 309;
			x = safeZoneX + safeZoneW * 0.25375;
			y = safeZoneY + safeZoneH * 0.43666667;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Speed Boost";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_1_3
		{
			type = 1;
			idc = 310;
			x = safeZoneX + safeZoneW * 0.25375;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Tree Climber";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_2_1
		{
			type = 1;
			idc = 311;
			x = safeZoneX + safeZoneW * 0.37875;
			y = safeZoneY + safeZoneH * 0.55888889;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Simple First Aid";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_2_1
		{
			type = 1;
			idc = 312;
			x = safeZoneX + safeZoneW * 0.37875;
			y = safeZoneY + safeZoneH * 0.43666667;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Healer";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_2_3
		{
			type = 1;
			idc = 313;
			x = safeZoneX + safeZoneW * 0.37875;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Master Healer";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_3_1
		{
			type = 1;
			idc = 314;
			x = safeZoneX + safeZoneW * 0.50375;
			y = safeZoneY + safeZoneH * 0.55888889;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Slow Eater";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_3_2
		{
			type = 1;
			idc = 315;
			x = safeZoneX + safeZoneW * 0.50375;
			y = safeZoneY + safeZoneH * 0.43666667;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Hydrater";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Skill_3_3
		{
			type = 1;
			idc = 316;
			x = safeZoneX + safeZoneW * 0.50375;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Raw Food";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		class Learn_Skill
		{
			type = 1;
			idc = 305;
			x = safeZoneX + safeZoneW * 0.63375;
			y = safeZoneY + safeZoneH * 0.68;
			w = safeZoneW * 0.113125;
			h = safeZoneH * 0.06111112;
			style = 0+2;
			text = "Learn Skill";
			borderSize = 0;
			colorBackground[] = {0.502,0.502,0.502,1};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
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
			
		};
		
	};
	
};
