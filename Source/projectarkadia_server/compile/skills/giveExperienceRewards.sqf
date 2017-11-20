/**
 * giveExperience.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

/* Here we setup what actions grants a player experience points
   - Killing Reapers
   - Farming
   - Research Complete
   - Crafting Complete
   - etc.

 */

private ["_player", "_type", "_reward", "_playerExperience", "_return"];
_player = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;

//Check if player is valid
if (isNull _player) exitWith {};

_reward = 0;

switch (_type) do {
	// experience granted for a reaper kill
	case 'reaperkill': {
		_reward = 100;
	};
	
	case 'crafting': {
		_reward = 150;	
	};
	
	case 'farming': {
		_reward = 150;
	};
	
	case 'research': {
		_reward = 300;	
	};
}


//Get new values
_return = [_player, reward] call ARK_fnc_giveExperience;


//Save to DB
//We now do this directly in the giveExperience script.
//[_player, "experience", [((_return select 0) + (_return select1))], true] call ARK_fnc_serverSyncPlayerData;
