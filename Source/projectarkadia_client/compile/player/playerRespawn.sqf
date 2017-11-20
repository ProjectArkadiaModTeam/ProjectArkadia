/**
 *  playerRespawn.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_player", "_corpse"];
_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_corpse = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

0 cutText["","BLACK FADED"];
0 cutFadeOut 9999999;

[] call ARK_fnc_resetMedicalVars;
[] call ARK_fnc_playerActions;
[] call ARK_fnc_playerSetup;