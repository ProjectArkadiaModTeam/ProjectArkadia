/**
 *  selectSkillTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_skill"];
disableSerialization;

_skill = _this select 0;

//ehh
if (_skill == "") exitWith {};
if (isNull (findDisplay 300)) exitWith {};


// I need a break...