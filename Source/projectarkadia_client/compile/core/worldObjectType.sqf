private ["_config","_finalConfig","_findStart","_modelInfo","_return","_selectedConfig","_start"];
params ["_object","_checkType"];

_return = false;
_config = ('CfgArkClient' call ARK_fnc_returnConfig) >> "CfgWorldInteractions";

_selectedConfig = "";
if (_object isEqualType objNull && !(isNull _object)) then {
    if !(_object isKindOf "All") then {
        (getModelInfo _object) params [["_modelName",""]];
		if (!isnil "_modelName") then {
			// replace spaces and periods with underscores
			_selectedConfig = (_modelName splitString " .") joinString "_";
		};
    } else {
        _selectedConfig = typeOf _object;
    };
};

// Do checks
_finalConfig = (_config >> _selectedConfig);
if (_checkType isEqualType []) then {
    _return = [];
    {
        _return pushBack (getNumber(_finalConfig >> _x) == 1);
    } forEach _checkType;
} else {
    _return = (getNumber(_finalConfig >> _checkType) == 1);
};

_return