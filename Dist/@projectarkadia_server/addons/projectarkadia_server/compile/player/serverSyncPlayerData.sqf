/**
 * serverSyncPlayerData.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_player", "_type", "_data", "_index", "_success", "_silent", "_call"];
_player = [_this, 0, ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;
_data = [_this, 2, [], [[]]] call BIS_fnc_param;
_silent = [_this, 3 false, [false]] call BIS_fnc_param;
_call = "";
_success = false;

if (isNull _player || _type == "" || count _data == 0) exitWith {};

_call = switch (_type) do {
	case "stats": {
		"saveplayerstats";	
	};
	
	case "equipment": {
		_data set [count _data, (getPos _player)];
		
		"saveplayerequipment";
	};
	
	case "location": {
		_data = =[(getPos _player)];
		
		"savelocation";
	};
	
	case "everything": {
		_data set [count _data, (getPos _player)];

        "savePlayerFull";
	};
	
	default {
        "";
    };
};

if (_call != "") then {
    _data set [count _data, (getPlayerUID _player)];
    [_call,_data,false] call ARK_fnc_dbCall;
    _success = true;
};

if (!_silent) then {
    [[_success],"ARK_fnc_syncPlayerDataConfirm",(owner _player),false] spawn BIS_fnc_MP;
};