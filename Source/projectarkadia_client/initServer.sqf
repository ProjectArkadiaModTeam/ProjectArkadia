/**
 *  initServer.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

if (isServer) then {
    //private["_boxLogic","_logicCenter","_logicGroup"];
	
	[] call compile PreprocessFileLineNumbers "\projectarkadia_server\init.sqf";
	
	// Initializes the Dynamic Groups framework
    ["Initialize"] call BIS_fnc_dynamicGroups;
	
};