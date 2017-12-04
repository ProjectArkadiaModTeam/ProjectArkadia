/**
 *  showVeil.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
[]spawn {     
	while {true} do {
		_obj = missionNamespace getVariable ["Mount_Weather" , objNull];
		_pos = getposASL _obj;
		setwind [0.401112*2,0.204166*2,false];
		_n =  abs(wind select 0) + abs(wind select 1) + abs(wind select 2);
		_velocity = wind;
		_color = [.38, .33, .2];
		_veil = "#particlesource" createVehicleLocal _pos;
		_veil setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8, 0], "", "Billboard", 1, 30, [0, 0, 0], _velocity, (_n * 12), 1.275, 1, 1, [75 + (random 46)], [_color + [0], _color + [(_this select 0)], _color + [0]], [1000], 1, 1, "", "", _obj];
		_veil setParticleRandom [3, [400 + (random 8), 400 + (random 10), 75], [2, 2, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_veil setParticleCircle [0.1, [0, 0, 0]];
		_veil setDropInterval 0.019; 
		_delay = 25 + (random 5);
		sleep _delay;
		deletevehicle _veil;
	};
};