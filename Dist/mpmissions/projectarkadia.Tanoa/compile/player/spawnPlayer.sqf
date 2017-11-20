/**
 *  spawnPlayer.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_pos"];
_pos = (_this select 0);
player enablesimulation true;

if (Ark_gbl_postEffect != -1) then {
    Ark_gbl_postEffect ppEffectEnable false;
    ppEffectDestroy Ark_gbl_postEffect;
    Ark_gbl_postEffect = -1;
};

if (debugMode) then {
    diag_log format["Set Pos: %1", _pos];
};

player setPos _pos;

if (dialog) then {
    closeDialog 0;
};

sleep 1;

[] call Ark_fnc_initHUD;
player setPos _pos;

0 cutText ["","BLACK IN"];

["everything"] call Ark_fnc_syncPlayerData;

if (debugMode) then {
    diag_log "Player Spawned.";
};