/**
 *  resetMedicalVars.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 // Reset any medical variables.
player setVariable ["respawning", nil, true];
player setVariable ["beingRevived", nil, true];
player setVariable ["revived", nil, true];
player setVariable ["revivable", nil, true];
player setVariable ["executable", nil];
player setVariable ["isBusy", nil];
player allowDamage true;
player setCaptive false;
player setUnconscious false;

if (!(isNull ARK_gbl_corpse)) then {
    ARK_gbl_corpse setVariable ["revivable", nil, true];
    ARK_gbl_corpse setVariable ["respawning", nil, true];
    ARK_gbl_corpse setVariable ["beingRevived", nil, true];
    ARK_gbl_corpse setVariable ["revived", nil, true];
    ARK_gbl_corpse setVariable ["executable", nil];
    ARK_gbl_corpse removeAllEventHandlers "Killed";
    ARK_gbl_corpse removeAllEventHandlers "HandleDamage";
    ARK_gbl_corpse removeAllEventHandlers "Respawn";
    ARK_gbl_corpse removeAllEventHandlers "InventoryOpened";
    ARK_gbl_corpse removeAllEventHandlers "InventoryClosed";
    removeAllActions ARK_gbl_corpse;
};