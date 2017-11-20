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

//player addEventHandler ["HandleDamage", {
//    _this call ARK_fnc_playerDamaged;
//}];