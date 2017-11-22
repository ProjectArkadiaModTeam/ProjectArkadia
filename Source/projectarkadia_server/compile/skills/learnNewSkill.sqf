/**
 * learnNewSkill.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

//TODO This needs to use skillpoints instead of experience points

private ["_skill", "_player", "_currentSkills", "_playerExperience", "_skillData", "_index", "_updatedSkillArray", "_requiredSkills", "_skillsOwned"];

_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_skill = [_this,1,"",[""]] call BIS_fnc_param;
_skillData = [];
_currentSkills = [];
_playerExperience = 0;

//First we check if the player is valid
// And if they want to learn an invalid skill
if (isNull _player || _skill == "") exitWith {};


//Get the players index in the global skill array
_index = [getPlayerUID _player, serverPlayerSkills] call ARK_fnc_findIndex;

if (_index != -1) then {
	_playerExperience = serverPlayerSkills select _index select 1 select 0;
	_currentSkills = serverPlayerSkills select _index select 1 select 1;
};

//Get the skill data
_skillData = [_skill] call ARK_fnc_getSkill;

//If the skill doesnt exist or is invalid
if (count _skillData == 0) exitWith {};

//Lets make sure that the user doesnt already have the skill
if (_skill in _playerSkills) exitWith {
	//Funny enough we cant do this on the server.... spawn with BIS_fnc_MP maybe?
	//hint "you already have this skill!"	
};

//Lets make sure that the player has all the skills required to learn the new skill
_requiredSkills = 0;
_skillsOwned = 0;
{
	_requiredSkills = _requiredSkills + 1;
	if (_x in _currentSkills) then {
		_skillsOwned = _skillsOwned + 1;
	};
} foreach (_skillData select 5);

if (_requiredSkills != _skillsOwned) exitWith {
	//Funny enough we cant do this on the server.... spawn with BIS_fnc_MP maybe?
	//hint "You don't have the required skills to learn this skill";
};

//Lets make sure that the player has enough experience points
if (_playerExperience < (_skillData select 4)) exitWith {
	//Funny enough we cant do this on the server.... spawn with BIS_fnc_MP maybe?
	//hint "You don't have enough skillpoints to learn this skill";
};

// Now we can update the players skill array
serverPlayerSkills set [_index, [
	(getPlayerUID _player),
	[
		(_playerExperience - (_skillDetails select 4)),
		(_playerSkills + [_skill])
	]
]];

// Lastly we update the database
[_player, "skills", [(_playerSkills + [_skill])], true] call ARK_fnc_serverSyncPlayerData;

//Funny enough we cant do this on the server.... spawn with BIS_fnc_MP maybe?
//hint "You have succesfully learned 'skillName'!;
