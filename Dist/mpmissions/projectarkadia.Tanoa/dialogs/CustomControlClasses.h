#ifndef HG_CustomControlClassesh
#define HG_CustomControlClassesh 1
//Create a header guard to prevent duplicate include.

class RscListbox
{
	idc = -1;
	type = 5;
	text = "";
	font = "puristaMedium";
	style = 16;
	colorText[] = {1,1,1,0.9};
	colorDisabled[] = {0.4,0.4,0.4,0};
	colorBackground[] = {0.75,0.75,0.75,0.8};
	colorBackgroundActive[] = {0.75,0.75,0.75,1};
	colorSelectBackground[] = {0.871,0.549,0.051,1};
	colorSelect[] = {1,1,1,1};
	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
	maxHistoryDelay = 1;
	sizeEx = 0.03;
	rowHeight = 0.050;
	x = 0.0;
	y = 0;
	w = 0;
	h = 0;
	
};
class RscButton
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {1,1,1,1};
	colorDisabled[] = {0,0,0,0.25};
	colorBackground[] = {0,0,0,0.85};
	colorBackgroundActive[] = {0.75,0.75,0.75,1};
	colorFocused[] = {0,0,0,0.85};
	colorShadow[] = {0.0235,0,0.0314,0};
	colorBorder[] = {0.0235,0,0.0314,1};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1.0};
	soundPush[] = {"\ca\ui\data\sound\new1",0.0,0.0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1.0};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1.0};
	style = 2;
	x = 0;
	y = 0;
	w = 0.055589;
	h = 0.039216;
	shadow = 2;
	font = "puristaMedium";
	sizeEx = 0.03921;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
	
};
class RscMap
{
	access = 0;
	type = 101;
	idc = -1;
	style = 48;
	font = "puristaMedium";
	sizeEx = 0.04;
	colorBackground[] = {0.969,0.957,0.949,1};
	colorText[] = {0,0,0,1};
	shadow = 0;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	
};
class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {1,1,1,1};
	colorText[] = {1,1,1,0.9};
	font = "puristaMedium";
	sizeEx = 0.03;
	text = "";
	
};
class Box
{
	type = 0;
	idc = -1;
	style = 2;
	shadow = 2;
	colorBackground[] = {1,1,1,0.9};
	colorText[] = {1,1,1,0.9};
	font = "puristaMedium";
	sizeEx = 0.03;
	text = "";
	
};
class RscText
{
	access = 0;
	idc = -1;
	type = 0;
	style = 0;
	lineSpacing = 1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "";
	shadow = 0;
	font = "puristaMedium";
	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)* 1);
	fixedWidth = false;
	x = 0;
	y = 0;
	h = 0;
	w = 0;
	
};
#endif
