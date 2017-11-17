/**
 *  playerKilled.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_killer"];
_corpse = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

//if (isNull (findDisplay 3100)) then {
//    [_corpse,_killer] call ARK_fnc_playerUnconscious;
//};

ARK_gbl_corpse = _corpse;