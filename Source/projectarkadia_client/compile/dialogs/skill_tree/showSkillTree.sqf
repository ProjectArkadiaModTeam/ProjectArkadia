/**
 *  showSkillTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_list"];
closeDialog 0;

if (!alive player) exitWith {};

disableSerialization;
createDialog "ARK_Skill_Tree";
waitUntil {sleep 0.1; !isNull (findDisplay 300)};

["survival"] call ARK_fnc_changeSkillTree;