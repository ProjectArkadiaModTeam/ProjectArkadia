/**
 * _master.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 //Project Arkadia Core Scripts
 ARK_fnc_config = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\core\config.sqf";
 ARK_fnc_findIndex = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\core\findIndex.sqf";
 
 publicVariable "ARK_fnc_config";
 publicVariable "ARK_fnc_findIndex";
 
 // Player Stuff
ARK_fnc_serverRequestPlayerData = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\player\serverRequestPlayerData.sqf";
ARK_fnc_serverSyncPlayerData = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\player\serverSyncPlayerData.sqf";
//ARK_fnc_serverRepack = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\player\serverRepack.sqf";
publicVariable "ARK_fnc_serverRepack";
