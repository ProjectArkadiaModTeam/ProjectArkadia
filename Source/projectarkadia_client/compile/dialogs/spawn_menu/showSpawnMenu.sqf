/**
 *  showSpawnMenu.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_list"];
0 cutText["","BLACK FADED"];
0 cutFadeOut 9999999;
createDialog "ARK_Clan_Selection";
disableSerialization;
waitUntil {sleep 0.1; !isNull (findDisplay 2100)};
(findDisplay 2100) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"]; 
