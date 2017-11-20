
class ARK_hud
{
    idd = -1;
    fadeout = 0;
    fadein = 0;
    duration = 999999999999999;
    name = "ARK_hud";
    onLoad = "uiNamespace setVariable ['ARK_hud', _this select 0]";

    class controlsBackground 
    {
        class ARK_HUD_icon_fps : RscPicture 
        {
            idc = -1;
            text = "3rdparty\icons\fps.paa";
            x = safezoneX + safezoneW - 0.15;
            y = safezoneY + safezoneH - 0.48;
            w = 0.02;
            h = 0.03;
        };
        
        class ARK_HUD_icon_health : RscPicture
        {
            
            idc = -1;
            text = "3rdparty\icons\health.paa";
            x = safezoneX + safezoneW - 0.15;
            y = safezoneY + safezoneH - 0.435;
            w = 0.02;
            h = 0.03;
        };
        
//        class ARK_HUD_icon_clan : RscPicture
//        {
//            
//            idc = -1;
//            text = "3rdparty\icons\money.paa";
//            x = safezoneX + safezoneW - 0.15;
//            y = safezoneY + safezoneH - 0.39;
//            w = 0.02;
//            h = 0.03;
//        };
    };
    
    class controls
    {
        class ARK_HUD_text_fps: RscText
        {
            idc = 2001;
            text = "";
            x = safeZoneX + safeZoneW - 0.125;
            y = safeZoneY + safeZoneH - 0.502;
            w = 0.3;
            h = 0.05;
            sizeEx = 0.03;
            colorBackground[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
        };
        
        class ARK_HUD_text_health: RscText
        {
            idc = 2002;
            text = "";
            x = safeZoneX + safeZoneW - 0.125;
            y = safeZoneY + safeZoneH - 0.456;
            w = 0.3;
            h = 0.05;
            sizeEx = 0.03;
            colorBackground[ ]= {0,0,0,0};
            colorText[] = {1,1,1,1};
        };
        
        class ARK_HUD_text_clan: RscText
        {
            idc = 2004;
            text = "";
            x = safeZoneX + safeZoneW - 0.125;
            y = safeZoneY + safeZoneH - 0.410;
            w = 0.3;
            h = 0.05;
            sizeEx = 0.03;
            colorBackground[ ]= {0,0,0,0};
            colorText[] = {1,1,1,1};
        };
    };   
};