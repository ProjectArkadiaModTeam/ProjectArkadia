/**
 * giveExperience.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */


private["_player", "_reward", "_index", "_playerExperience", "_playerSkills"];
_player = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_reward = [_this, 1, 0, [0]] call BIS_fnc_param;
_return =[];

//If forsome reason the player who called the script doestn exists ignore the rest of the script

if (isNull _player) exitWith {
	_return; //returns empty array
};

// Gets the players index in the global skill array
_index [getPlayerUID _player, serverPlayerSkills] call ARK_fnc_findIndex; 

//Check if index is valid
if (_index == -1) exitWith {
	_return;
};

//Get the players current experience points
_playerExperience = (((serverPlayerSkills select _index) select 1) select 0);

//Get the players current skills
_playerSkills = (((serverPlayerSkills select _index) select 1) select 0);


//Set the players new experience point value
serverPlayerSKills set [_index, [
	(getPlayerUID _player),
	[
		(_playerExperience + _reward),
		_playerSkills
	]
]];

//Update the database
[_player, "experience", [(_playerExperience + _reward)], true] call ARK_fnc_serverSyncPlayerData;

//Return data to caller
_return = [
	_reward,
	_playerExperience,
	_playerSkills
];

_return;