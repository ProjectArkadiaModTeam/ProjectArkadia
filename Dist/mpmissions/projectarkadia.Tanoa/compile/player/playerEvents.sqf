/**
 *  playerEvents.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

player addEventHandler ["Respawn", {
    _this call ARK_fnc_playerRespawn;
}];
player addEventHandler ["Killed", {
    _this call ARK_fnc_playerKilled;
}];

player addEventHandler ["FiredMan", {
	_this call ARK_fnc_playerFired;
}];

//player addEventHandler ["Take", {
//	[_this select 1] call ARK_fnc_interact;
//}];
//
//player addEventHandler ["Put", {
//	[_this select 1] call ARK_fnc_interact;
//}];

//player addEventHandler ["HandleDamage", {
//    _this call ARK_fnc_playerDamaged;
//}];