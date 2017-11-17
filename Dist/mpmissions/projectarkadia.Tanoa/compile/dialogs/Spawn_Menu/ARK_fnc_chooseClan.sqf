/**
 *  ARK_fnc_chooseClan.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_data", "_pos", "_spawn"];
disableSerialization;

_data = _this select 0;
hint _data;

switch (_data) do {
	case "skaikru": {_spawn = "spawn_1"};
	case "trikru": {_spawn = "spawn_2"};
	case "mountainmen": {_spawn = "spawn_3"};
};


if(_data == "") exitWith {hint "You must select a clan!"};

(findDisplay 2100) displayRemoveAllEventHandlers "KeyDown";

_pos = [_spawn, 0, [], (getMarkerSize _spawn) select 0, (typeof player)] call SHK_pos;
closeDialog 0;

ARK_gbl_clan = _data;

//_handle = [] spawn ARK_fnc_playerSetupBambiGear;
//waitUntil {scriptDone _handle};

null = [] spawn { 
	myhandle = [] spawn ARK_fnc_playerSetupBambiGear;
	waitUntil { scriptDone myhandle }
};


[_pos] spawn ARK_fnc_spawnPlayer;
