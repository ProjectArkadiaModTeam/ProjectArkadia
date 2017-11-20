/**
 *  initHUD.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

[] spawn
{
    private["_display"];
    disableSerialization;
    0 cutRsc ["ARK_hud", "PLAIN"];

    _display = uiNameSpace getVariable ["ARK_hud", displayNull];

    while {!(isNull _display)} do
    {
        (_display displayCtrl 2001) ctrlSetText format["%1", (round diag_fps)];
        (_display displayCtrl 2002) ctrlSetText format["%1", (round((1 - (damage player)) * 100))];
        (_display displayCtrl 2004) ctrlSetText format["%1", ARK_gbl_clan];
        sleep 1;
    };
};