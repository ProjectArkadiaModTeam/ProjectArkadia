/**
 *  playerFired.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_gesture"];
params ["_unit", "weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];

//not sure this is the best way to do it.
switch true do {
	case (_ammo isKindOf "B_Hatchet"): {
		_gesture = selectRandom ["GestureSwing0", "GestureSwing1", "GestureSwing2"];
		player playActionNow _gesture;
		call ARK_fnc_chopWood;
	};
};