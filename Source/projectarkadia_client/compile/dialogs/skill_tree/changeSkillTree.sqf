/**
 *  changeSkillTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_data", "_allSkillTreeData", "_offset"];
disableSerialization;

_data = _this select 0;

//ehh
if (_data == "") exitWith {};
if (isNull (findDisplay 300)) exitWith {};

_allSkillTreeData = [];
_offset = 0;

{
	_allSkillTreeData = _allSkillTreeData + (_x select 2);
	
} foreach ([] call ARK_fnc_skillList);

switch (_data) do {
	case "survival": { _offset = 0 };
	case "combat": { _offset = 10 };
	case "research": { _offset = 20 };
	case "crafting": { _offset = 30 };
	case "farming": { _offset = 40 };
};

for [{_i=0}, {_i<10}, {_i=_i+1}] do
{
	ctrlSetText [_i+307, (_allSkillTreeData select (_i+_offset))];
}