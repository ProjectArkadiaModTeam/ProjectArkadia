/**
 * init.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
enableSaving [false, false];
serverIsReady = false;
publicVariable "serverIsReady";
serverStatus = "";
publicVariable "serverStatus";

//Keep track of players skills (Ability to shoot, drive and so on)
serverPlayerSkills = [];

//Keep track of players oxygen levels
serverPlayerOxygen = [];


diag_log "SERVER: Compiling compile\_master.sqf";
_handle = [] execVM "\projectarkadia_server\compile\_master.sqf";
waitUntil {scriptDone _handle};

debugMode = (["debug_mode"] call ark_fnc_config);
publicVariable "debugMode";
diag_log format["Debug mode enabled: %1", debugMode];

diag_log "SERVER: Compiling 3rdparty\_master.sqf";
_handle = [] execVM "\projectarkadia_server\3rdparty\_master.sqf";
waitUntil {scriptDone _handle};

diag_log "SERVER: Establishing database connection.";
_handle = ["ark","SQL_CUSTOM","ark_sql.ini"] execVM "\projectarkadia_server\3rdparty\extDB3\dbInit.sqf";
waitUntil {scriptDone _handle};

diag_log "SERVER: Running server setup.";
_handle = [] execVM "\projectarkadia_server\server\setup.sqf";
waitUntil {scriptDone _handle};