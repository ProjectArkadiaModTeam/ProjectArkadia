/**
 *  playerSetupBambiGear.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 

private["_spawn_items"];
removeAllAssignedItems player;
removeAllWeapons player;
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
removeAllItems player;
{player removeMagazine _x;} foreach (magazines player);
//
//_spawn_items = switch ([player] call ARK_fnc_svrGetUnitSide) do { 
//    case "Skaikru" : { (["spawn_items"] call ARK_fnc_config) select 0; };
//    case "Mountain Men" : { (["spawn_items"] call ARK_fnc_config) select 1; };
//    case "Tree kru" : { (["spawn_items"] call ARK_fnc_config) select 2; };
//    default { (["spawn_items"] call ARK_fnc_config) select 3; }; 
//};

_spawn_items = switch (ARK_gbl_clan) do { 
    case "skaikru" : { (["spawn_items"] call ARK_fnc_config) select 0; };
    case "mountainmen" : { (["spawn_items"] call ARK_fnc_config) select 1; };
    case "trikru" : { (["spawn_items"] call ARK_fnc_config) select 2; };
    default { (["spawn_items"] call ARK_fnc_config) select 3; }; 
};

if ((_spawn_items select 0) != "") then {
    player addUniform (_spawn_items select 0);
};

if ((_spawn_items select 1) != "") then {
    player addVest (_spawn_items select 1);
};

if ((_spawn_items select 2) != "") then {
    player addBackpack (_spawn_items select 2);
};

if ((_spawn_items select 3) != "") then {
    player addHeadgear (_spawn_items select 3);
};

{
    player addItem _x;
} foreach (_spawn_items select 6);

{
    player addItem _x;
    player assignItem _x;
} foreach (_spawn_items select 7);

{
    player addMagazine _x;
} foreach (_spawn_items select 5);

if ((_spawn_items select 4) != "") then {
    player addWeapon (_spawn_items select 4);
    player selectWeapon (_spawn_items select 4);
};

if ((_spawn_items select 9) != "") then {
    player addWeapon (_spawn_items select 9);
};

if ((_spawn_items select 8) != "") then {
    player addWeapon (_spawn_items select 8);
    player selectWeapon (_spawn_items select 8);
};

if (debugMode) then {
    diag_log "Resetting last location.";
};

ARK_gbl_lastLoc = [];

if (debugMode) then {
    diag_log "Spawning player with: ";

    diag_log format["0: %1",(_spawn_items select 0)];
    diag_log format["1: %1",(_spawn_items select 1)];
    diag_log format["2: %1",(_spawn_items select 2)];
    diag_log format["3: %1",(_spawn_items select 3)];
    diag_log format["4: %1",(_spawn_items select 4)];
    diag_log format["5: %1",(_spawn_items select 5)];
    diag_log format["6: %1",(_spawn_items select 6)];
    diag_log format["7: %1",(_spawn_items select 7)];
    diag_log format["8: %1",(_spawn_items select 8)];
};