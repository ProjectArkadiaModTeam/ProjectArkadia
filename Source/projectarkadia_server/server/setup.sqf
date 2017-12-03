/**
 * setup.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 
 private ["_spawnBlock","_limit","_debug"];




serverStatus = "SERVER: Generating safe spawn area";
publicVariable "serverStatus";
if (debugMode) then {
    diag_log serverStatus;
};

[] spawn {
    private ["_complete"];
    _complete = false;

    if (debugMode) then {
        diag_log "SERVER: Ready!";
    };
    
    serverIsReady = true;
    publicVariable "serverIsReady";
};