/**
 *  getPlayerSpawn.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_spawnZone","_pos","_holder"];

if (debugMode) then {
    diag_log (["spawn_type"] call ARK_fnc_config);;
};

if (count ARK_gbl_lastLoc > 0) exitWith {
    [ARK_gbl_lastLoc] spawn ARK_fnc_spawnPlayer;
    ARK_gbl_lastLoc = [];
};

 [] spawn ARK_fnc_showSpawnMenu;