/**
 * serverSyncPlayerData.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private["_player","_type","_data","_index","_exp","_success","_silent","_call"];

diag_log "serverSyncPlayerData";

_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;
_data = [_this,2,[],[[]]] call BIS_fnc_param;
_silent = [_this,3,false,[false]] call BIS_fnc_param;
_call = "";
_success = false;

diag_log "TESTING STUFF___________________";
diag_log _player;
diag_log _type;
diag_log _data;
diag_log "DONE____________________________";

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
		_data = [(getPos _player)];
		
		"savelocation";
	};
	
	case "everything": {
		_exp = 0;
		
//		_index = [(getPlayerUID _player), serverPlayerSkills] call ARK_fnc_findIndex;
//        if (_index != -1) then {
//            _exp = (((serverPlayerSkills select _index) select 1) select 0);
//            //_skills = (((serverPlayerSkills select _index) select 1) select 1);
//        };
		
		_data set [count _data, _exp];
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