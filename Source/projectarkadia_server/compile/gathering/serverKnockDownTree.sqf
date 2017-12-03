/**
 *  serverKnockDownTree.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 

private ["_dropWood","_item","_lootType","_nearbyWH","_posWH"];
params ["_object","_type","_player"];

//if the tree doesnt exist, exit.
if(isNull _object) exitWith{};


if(_player distance2D (getposATL _object) > 6) exitWith {};
_dropWood = false;

if(alive _object) then {
	_posWH = getPosATL _object;
	_posWH set[2,0];
}

if(damage _object > 0.7) then {
	_object setdamage 1;
	_dropWood = true;
} else {
	_object setDamage((damage _object) + 0.25) min 1;
};


if (_dropWood) then {
	_nearbyWH = nearestObject[_posWH, ["grounderWeaponHolder"], 2];
	if !(_nearbyWH isEqualTo[]) then {
		_item = _nearbyWH select 0;
		_item additemcargoglobal ["ark_woodpile", 1];	
	} else {
		_item = createVehicle["grounderWeaponHolder", _posWH, [], 0, "CAN_COLLIDE"];
		_item setPosATL _posWH;
		_item additemcargoglobal ["ark_woodpile", 1];	
	};
};