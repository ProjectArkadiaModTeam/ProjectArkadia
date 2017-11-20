/**
 *  keyHandler.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_shift","_alt","_code","_ctrl","_ctrlKey","_veh"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;

//A,S,W,D will interrupt progressbar.
if((player getVariable ["isBusy",false]) && _code in [17,30,31,32]) then {
    ARK_gbl_interrupt = true;
};

false;