/**
 *  chopWood.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
private ["_playerPos", "_getType", "_objects", "_objects", "_selectedObject", "_type", "_types"];

//First we get the players current positions
_playerPos = player modelToWorld[0,5,0];

// Check if the player is in water
if !(surfaceIsWater _playerPos) then {
	//Convert from position ATL(above terrain level) to ATL (Above sea level)
	_playerPos = ATLtoASL _playerPos;
};

//get all object in players line of sight (withing 2 meters)
_objects = lineIntersectsObjs[eyePos player, _playerPos, player, objNull, true, 2];

//In case there is no objects we set some standard values
_object = objNull;
_type = 0;

{
	_selectedObject = _x;
	_types = ["tree"]; //Maybe haves bushed here aswell?
	_getTypes = [_x, _types] call ARK_fnc_worldObjectType;
	
	
	if (_getType param [_types find _x, false]) exitWith {
		_type = _forEachIndex;
        _object = _sel_object;
	};
	
	
	 if !(isNull _object) exitWith {};
	
}forEach _objects;

if (!isNull _object) then {
	if (alive _object) then {
		[_object, _type, player] remoteExec ["ARK_server_knockDownTree",2];	
	};
}