/**
 *  init.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 enableSaving [false, false];

if (!isDedicated) then {
	waitUntil {!(isNull player)};
	player enablesimulation false;
	
	_handle = [] execVM "compile\_master.sqf";
	waitUntil {scriptDone _handle};
	
	_handle = [] execVM "3rdparty\_master.sqf";
	waitUntil {scriptDone _handle};
	
	0 cutText["The Ark Server is initiating, please wait.","BLACK FADED"];
    0 cutFadeOut 9999999;

    waitUntil {sleep 0.25; !(isNil "serverIsReady")};
	
	[] spawn {
//        if (serverStatusLootBuildings == -1) then {
//            [] call ARK_fnc_playerJoined;
//        };

        while {!serverIsReady} do {
            0 cutText [serverStatus,"BLACK FADED"];
            sleep 0.25;
        };
		
		waitUntil {sleep 0.25; serverIsReady};

		0 cutText["Local Client initiating, please wait..","BLACK FADED"];
    	0 cutFadeOut 9999999;
    };
	
	ARK_gbl_experience = -1;
	ARK_gbl_clan = "";
	
	// Keep track of when the last sync happened (in seconds).
    ARK_gbl_lastSync = 0;

    // Keep track of whether the player is trying to interrupt an action or not.
    ARK_gbl_interrupt = false;

    // For keeping track of post processing effects.
    ARK_gbl_postEffect = -1;
	
	// Keep track of when the next automatic sync is happening (in seconds).
    // to avoid all players syncing at same time when everyone joins, we spread it over 5 minutes.
    //ARK_gbl_nextSync = (random 300) + 600; // between 10 and 15 mins
	ARK_gbl_nextSync = 60;
	// Keeps track of the player corpse state (revival and respawn)
    ARK_gbl_corpse = objNull;
	
	// Keeps track of when the player should respawn, in case they get executed.
    ARK_gbl_respawnTimer = 0;
	
	// Stores the last known location of the player.
    ARK_gbl_lastLoc = [];
	
	// Load the briefing
    _handle = [] spawn ARK_fnc_briefing;
    waitUntil {sleep 0.1; scriptDone _handle};

    if(debugMode) then {
        diag_log "Setting up event handlers";
    };
    // Set event handlers;
    _handle = [] spawn ARK_fnc_playerEvents;
    waitUntil {sleep 0.1; scriptDone _handle};

    if(debugMode) then {
        diag_log "Setting up player actions";
    };
    // Set player actions;
    _handle = [] spawn ARK_fnc_playerActions;
    waitUntil {sleep 0.1; scriptDone _handle};

    if(debugMode) then {
        diag_log "Setting up key handlers";
    };
    waitUntil {!(isNull (findDisplay 46))};
    (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call ARK_fnc_keyHandler;"];

    if(debugMode) then {
        diag_log "Resetting character variabels and stats.";
    };
    // Set player actions;
    _handle = [] spawn ARK_fnc_resetMedicalVars;
    waitUntil {sleep 0.1; scriptDone _handle};

    if(debugMode) then {
        diag_log "Setting up character and inventory";
    };

    // setup the player character + inventory
    _handle = [] spawn ARK_fnc_playerSetup;
    waitUntil {sleep 0.1; scriptDone _handle};
	
	// initiate the passive skills.
    //_handle = [] spawn ARK_fnc_initPassiveSkills;
    //waitUntil {sleep 0.1; scriptDone _handle};

    if (debugMode) then {
        diag_log "Initiating Sync timer";
    };

    // update the user data automatically every 10-15 minutes
    [] spawn {
        private ["_nextSync"];
        _nextSync = 0;

        while {true} do {
            sleep 1;
            ARK_gbl_lastSync = ARK_gbl_lastSync + 1;

            if (ARK_gbl_nextSync == ARK_gbl_lastSync) then {
				diag_log "Syncing player to DB";
                ["everything"] call ARK_fnc_syncPlayerData;
            };
        };
    };

    // Detect ZEUS mode
    [] spawn {
        private ["_allowed"];
        _allowed = ["allow_zeus"] call ARK_fnc_config;

        if (!_allowed) then {
            while {true} do {
                sleep 1;

                if (!(isNull (findDisplay 312))) then {
                    // send a message back to the server
                    [[player, "zeus"],"ARK_fnc_serverDetection",false,false] spawn BIS_fnc_MP;
                    
                    // close the display
                    findDisplay 312 closeDisplay 0;
                };
            };
        };
    };
};

