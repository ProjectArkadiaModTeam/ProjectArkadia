/**
 * serverRequestPlayerData.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_player", "_index", "_stats", "_experience", "_lastLoc"];
_player = [_this, 0, ObjNull,[ObjNull]] call BIS_fnc_param;
_name = [_this, 1, "", [""]] call BIS_fnc_param;
_stats = [];
_experience = 0;
_equipment = [];
_lastLoc = [];

diag_log "if nothing after this player = null";
	
if (isNull _player) exitWith{};

diag_log "Something important is working... i guess?";
							  
_playerData = ["loadPlayer", [(getPlayerUID _player)]] call ARK_fnc_dbCall;

if (count _playerData == 0) then {
	["newPlayer",[(getPlayerUID _player), _name]] call ARK_fnc_dbCall;
} else {
	["updatePlayerName",[_name, (getPlayerUID _player)]] call ARK_fnc_dbCall;
	_stats = (_playerData select 0);
	_equipment = (_playerData select 1);
	_experience = (_playerData select 2);
	_lastLoc = (_playerData select 3);
};

[[_stats, _equipment, _experience, _lastLoc],"ARK_fnc_processPlayerData",(owner _player),false] spawn BIS_fnc_MP;