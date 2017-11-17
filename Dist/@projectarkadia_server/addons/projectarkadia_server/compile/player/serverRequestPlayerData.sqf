/**
 * serverRequestPlayerData.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_player", "_index", "_lastLocation"];
_player = [this, 0, ObjNull,[ObjNull]] call BIS_fnc_param;
_name = [_this, 1, "", [""]] call BIS_fnc_param;
_stats = [];
_experience = 0;
_equipment = [];
_lastLocation = [];

if (isNull _player) exitWith{};
							  
_playerDatta = ["loadPlayer", [(getPlayerUID _ player)]] call ARK_fnc_dbCall;

if (count _playerData == 0) then {
	["newPlayer",[(getPlayerUID _player), _name]] call ARK_fnc_dbCall;
} else {
	["updatePlayerName",[_name, (getPlayerUID _player)]] call ARK_fnc_dbCall;
	_equipment = (_playerData select 0);
	_lastLocation = (_playerData select 1);
};

[[_equipment,_lastLocation],"ARK_fnc_processPlayerData",(owner _player),false] spawn BIS_fnc_MP;