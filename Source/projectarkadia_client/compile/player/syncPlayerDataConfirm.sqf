/**
 *  syncPlayerDataConfirm.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_success"];
_success = [_this,0,false,[false]] call BIS_fnc_param;

if (_success) then {
    hint "Player data saved.";
} else {
    hint "Saving of player data failed.";
};