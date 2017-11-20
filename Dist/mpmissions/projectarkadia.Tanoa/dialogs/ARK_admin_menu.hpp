/**
 *  ARK_admin_menu.hpp
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

class ARK_admin_menu
{
    idd = 2200;
    name = "ARK_admin_menu";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground
    {
        class ARK_admin_frame: RscFrame
        {
            idc = -1;
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.132 * safezoneH;
        };
        class ARK_admin_background: Box
        {
            idc = -1;
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.132 * safezoneH;
            colorBackground[] = {0,0,0,0.9};
        };
        class ARK_admin_title: RscText
        {
            idc = -1;
            text = "DEBUG MENU";
            x = 0.427812 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.118594 * safezoneW;
            h = 0.055 * safezoneH;
        };
    };
    
    class controls
    {
        class ARK_admin_teleport: RscButton
        {
            idc = 1600;
            text = "TELEPORT";
            x = 0.427812 * safezoneW + safezoneX;
            y = 0.467 * safezoneH + safezoneY;
            w = 0.118594 * safezoneW;
            h = 0.055 * safezoneH;
            onButtonClick = "closeDialog 0; [] call ARK_fnc_teleportMap;";
        };
    };
};