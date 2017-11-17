class ARK_spawn_menu
{
    idd = 2100;
    name = "ARK_spawn_menu";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground
    {
        class ARK_spawn_frame: RscFrame
        {
            idc = -1;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.225 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.55 * safezoneH;
        };
        class ARK_spawn_background: Box
        {
            idc = -1;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.225 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.55 * safezoneH;
            colorBackground[] = {0,0,0,0.9};
        };
        class ARK_spawn_title: RscText
        {
            idc = -1;
            text = "CHOOSE CLAN";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.236 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.044 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.871,0.549,0.051,1};
        };
    };

    class controls
    {
        class ARK_spawn_list: RscListbox
        {
            idc = 2102;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.418 * safezoneH;
            onLBSelChanged = "[] call ARK_fnc_pointSelected;";
        };
        class ARK_spawn_select: RscButton
        {
            idc = 2101;
            text = "SPAWN";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.72 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.044 * safezoneH;
            onButtonClick = "[] call ARK_fnc_chooseSpawnPoint;";
        };
        class ARK_spawn_map: RscMap
        {
            idc = 2103;
            x = 0.402031 * safezoneW + safezoneX;
            y = 0.236 * safezoneH + safezoneY;
            w = 0.299062 * safezoneW;
            h = 0.528 * safezoneH;
            maxSatelliteAlpha = 0.75;
            alphaFadeStartScale = 1.15;
            alphaFadeEndScale = 1.29;
        };
    };
};