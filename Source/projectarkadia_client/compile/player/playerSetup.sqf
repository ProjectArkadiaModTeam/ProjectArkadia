/**
 *  playerSetup.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
player enablesimulation false;
 
if (!(["communication_enabled"] call ARK_fnc_config)) then {
 	enableSentences false;
	player disableConversation true;
	player setVariable ["BIS_noCoreConversations", true];
};

player enablefatigue (["fatigue_enabled"] call ARK_fnc_config);
 
removeAllAssignedItems player;
removeAllWeapons player;
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
removeAllItems player;
{player removeMagazine _x;} foreach (magazines player);

if (ARK_gbl_experience == -1) then {
    [[player,profileName],"ARK_fnc_serverRequestPlayerData",false,false] spawn BIS_fnc_MP;

    // wait until the player data has been received and loaded.
    while {ARK_gbl_experience == -1} do {
        sleep 0.5;
		diag_log "Getting stuff from db";
		
    };
} else {
    //[] call ARK_fnc_playerSetupBambiGear;
};

[] call ARK_fnc_getPlayerSpawn;