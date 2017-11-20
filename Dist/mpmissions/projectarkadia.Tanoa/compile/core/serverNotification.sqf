/**
 *  serverNotification.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_message","_victim"];
_message = [_this,0,"",[""]] call BIS_fnc_param;
_sound = [_this,1,"",[""]] call BIS_fnc_param;

if (_message == "") exitWith {};

hint _message;

if (_sound != "") then {
    player say3D _sound;
};