/**
 *  _master.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

private ["_building", "_relPos", "_boundBox", "_min", "_max", "_playerX", "_playerY","_playerZ", "_minX", "_minY", "_minZ", "_maxX", "_maxY", "_maxZ", "_duration"];

_building = nearestObject [player, "HouseBase"];
_relPos = _building worldToModel (getPosATL player);
_boundBox = boundingBoxReal _building;
_min = _boundBox select 0;
_max = _boundBox select 1;
_playerX = _relPos select 0;
_playerY = _relPos select 1;
_playerZ = _relPos select 2;
_minX = _min select 0;
_minY = _min select 1;
_minZ = _min select 2;
_maxX = _max select 0;
_maxY = _max select 1;
_maxZ = _max select 2;
_duration = 2 + random 2;
if ((_playerX > _minX && _playerX < _maxX && _playerY > _minY && _playerY < _maxY && _playerZ > _minZ && _playerZ < _maxZ) or vehicle player != player) then {
	true;
} else {
	false;
};