/**
 *  _master.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 // Core
ARK_fnc_briefing = compileFinal preprocessfilelinenumbers "compile\core\briefing.sqf";
//ARK_fnc_showShopMenu = compileFinal preprocessfilelinenumbers "compile\core\showShopMenu.sqf";
ARK_fnc_initHUD = compileFinal preprocessfilelinenumbers "compile\core\initHUD.sqf";
ARK_fnc_playerJoined = compileFinal preprocessfilelinenumbers "compile\core\playerJoined.sqf";
ARK_fnc_syncAnimation = compileFinal preprocessFileLineNumbers "compile\core\syncAnimation.sqf";
ARK_fnc_keyHandler = compileFinal preprocessFileLineNumbers "compile\core\keyHandler.sqf";
ARK_fnc_serverNotification = compileFinal preprocessFileLineNumbers "compile\core\serverNotification.sqf";
ark_fnc_worldObjectType = compileFinal preprocessFileLineNumbers "compile\core\worldObjectType.sqf";

// Player
ARK_fnc_getPlayerSpawn = compileFinal preprocessfilelinenumbers "compile\player\getPlayerSpawn.sqf";
ARK_fnc_playerActions = compileFinal preprocessfilelinenumbers "compile\player\playerActions.sqf";
ARK_fnc_playerEvents = compileFinal preprocessfilelinenumbers "compile\player\playerEvents.sqf";
ARK_fnc_playerKilled = compileFinal preprocessfilelinenumbers "compile\player\playerKilled.sqf";
ARK_fnc_playerDamaged = compileFinal preprocessfilelinenumbers "compile\player\playerDamaged.sqf";
ARK_fnc_playerRespawn = compileFinal preprocessfilelinenumbers "compile\player\playerRespawn.sqf";
ARK_fnc_playerSetup = compileFinal preprocessfilelinenumbers "compile\player\playerSetup.sqf";
ARK_fnc_playerSetupBambiGear = compileFinal preprocessfilelinenumbers "compile\player\playerSetupBambiGear.sqf";
ARK_fnc_processPlayerData = compileFinal preprocessfilelinenumbers "compile\player\processPlayerData.sqf";
ARK_fnc_spawnPlayer = compileFinal preprocessfilelinenumbers "compile\player\spawnPlayer.sqf";
ARK_fnc_syncPlayerData = compileFinal preprocessfilelinenumbers "compile\player\syncPlayerData.sqf";
ARK_fnc_syncPlayerDataConfirm = compileFinal preprocessfilelinenumbers "compile\player\syncPlayerDataConfirm.sqf";
ARK_fnc_resetMedicalVars = compileFinal preprocessfilelinenumbers "compile\player\resetMedicalVars.sqf";
//ARK_fnc_playerUnconscious = compileFinal preprocessfilelinenumbers "compile\player\playerUnconscious.sqf";
ARK_fnc_playerWantToRespawn = compileFinal preprocessFileLineNumbers "compile\player\playerWantToRespawn.sqf";

// Dialog: Spawn Menu
ARK_fnc_chooseClan = compileFinal preprocessFileLineNumbers "compile\dialogs\spawn_menu\ARK_fnc_chooseClan.sqf";
ARK_fnc_showSpawnMenu = compileFinal preprocessfilelinenumbers "compile\dialogs\spawn_menu\showSpawnMenu.sqf";

// Dialog: Skill Tree
ARK_fnc_changeSkillTree = compileFinal preprocessFileLineNumbers "compile\dialogs\skill_tree\changeSkillTree.sqf";
ARK_fnc_selectSkill = compileFinal preprocessFileLineNumbers "compile\dialogs\skill_tree\selectSkill.sqf";
ARK_fnc_showSkillTree = compileFinal preprocessFileLineNumbers "compile\dialogs\skill_tree\showSkillTree.sqf";


//Gathering
ARK_fnc_chopWood = compileFinal preprocessFileLineNumbers "compile\gathering\chopWood.sqf";
