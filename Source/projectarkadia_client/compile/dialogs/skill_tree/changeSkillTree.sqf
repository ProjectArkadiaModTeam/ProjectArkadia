/**
 *  changeSkillTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_data", "_allSkillTreeData", "_offset", "_currentControl"];
disableSerialization;

_data = _this select 0;
_currentControl = 0;

//ehh
if (_data == "") exitWith {};
if (isNull (findDisplay 300)) exitWith {};

_allSkillTreeData = [];
_offset = 0;

{
	_allSkillTreeData append [_x];
	
} foreach ([] call ARK_fnc_skillList);

switch (_data) do {
	case "survival": { _offset = 0 };
	case "combat": { _offset = 10 };
	case "research": { _offset = 20 };
	case "crafting": { _offset = 30 };
	case "farming": { _offset = 40 };
};

diag_log _allSkillTreeData;

for [{_i=0}, {_i<10}, {_i=_i+1}] do
{
	_currentControl = _i + 307;
	ctrlSetText [_currentControl, ((_allSkillTreeData select (_i + _offset)) select 2)];
	buttonSetAction [_currentControl, format["['%1'] call ARK_fnc_selectSkill", ((_allSkillTreeData select (_i + _offset)) select 0)]];
};