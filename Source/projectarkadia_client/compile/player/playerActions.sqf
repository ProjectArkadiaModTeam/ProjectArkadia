/**
 *  playerActions.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

// DEBUG/ADMIN MENU
if (debugMode) then { 
   // player addAction["<t color='#f10000'>[Dev/Debug Menu]</t>",ARK_fnc_showDevMenu,player,0,false,false,"",'!isNull player && (alive player)'];
};

// SKILL MENU
player addAction["<t color='#0075DB'>[Skill Menu]</t>",ARK_fnc_showSkillTree,player,0,false,false,"",'!isNull player && (alive player)'];