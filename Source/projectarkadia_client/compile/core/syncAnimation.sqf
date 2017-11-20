private["_unit","_animation","_type"];
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_animation = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"playMoveNow",["playMoveNow"]] call BIS_fnc_param;

if(isNull _unit) exitWith {};

switch (_type) do { 
    case "switchMove" : {
        _unit switchMove _animation;
    };

    case "playMove" : {
        _unit playMove _animation;
    };

    case "playMoveNow" : {
        _unit playMoveNow _animation;
    };

    case "playAction" : {
        _unit playAction _animation;
    };

    case "playActionNow" : {
        _unit playActionNow _animation;
    };
};