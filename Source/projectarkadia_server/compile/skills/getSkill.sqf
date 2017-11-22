/**
 * getSkill.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_skill"];
_skill = [_this,0,"",[""]] call BIS_fnc_param;
_skillData = [];

{
    if (typeName (_x select 0) == "STRING") then {
        if ((_x select 0) == _skill) exitWith {
            _skillData = _x;
        };
    }; /*else {
        private ["_y"];
        _y = _x;

        {
            if ((_x select 0) == _skill) exitWith {
                _skillData = _x;
            };
        } foreach _y;
    };*/

    if (count _skillData != 0) exitWith  {};

} foreach ([] call ARK_fnc_skillList);

_skillData;