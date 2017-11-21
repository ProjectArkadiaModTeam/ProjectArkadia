/**
 *  selectSkillTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_skill", "_skillData", "_playerExperience", "_currentSkills"];
disableSerialization;

_skill = _this select 0;
_skillData = [];
_currentSkills = [];
_playerExperience = 0;


//ehh
if (_skill == "") exitWith {};
if (isNull (findDisplay 300)) exitWith {};

_skillData = [_skill] call ARK_fnc_getSkill;

ctrlSetText [302, (_skillData select 2)];
ctrlSetText [303, (_skillData select 5)];
ctrlSetText [304, (_skillData select 4)];

//Lets make sure that the player has all the skills required to learn the new skill
_requiredSkills = 0;
_skillsOwned = 0;
{
	_requiredSkills = _requiredSkills + 1;
	if (_x in _currentSkills) then {
		_skillsOwned = _skillsOwned + 1;
	};
} foreach (_skillData select 5);

if (_requiredSkills != _skillsOwned || _playerExperience < (_skillData select 4)) then {
	ctrlEnable [305, false];
} else {
	ctrlEnable [305, true];
	buttonSetAction [305, format["[%1] call ARK_fnc_learnNewSkill;", (_skillData select 0)]];
};





// I need a break...