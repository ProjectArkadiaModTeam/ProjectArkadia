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


// Skill Stuff
ARK_fnc_skillList = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\skills\skillList.sqf";
ARK_fnc_learnNewSkill = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\skills\learnNewSkill.sqf";
ARK_fnc_getSkill = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\skills\getSkill.sqf";
ARK_fnc_giveExperienceReward = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\skills\giveExperienceReward.sqf";
ARK_fnc_giveExperience = compileFinal preprocessfilelinenumbers "\projectarkadia_server\compile\skills\giveExperience.sqf";
publicVariable "ARK_fnc_skillList";
publicVariable "ARK_fnc_getSkill";