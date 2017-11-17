/**
 * _master.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 // Number to text conversion function
ARK_fnc_numberToText = compileFinal preprocessfilelinenumbers "\projectarkadia_server\3rdparty\numberToText.sqf";
publicVariable "ARK_fnc_numberToText";

// SHK_pos
call compile preprocessfile "\projectarkadia_server\3rdparty\SHK\shk_pos_init.sqf";
 
 // extDB3
ARK_fnc_dbCall = compileFinal preprocessFileLineNumbers "\projectarkadia_server\3rdparty\extDB3\dbCall.sqf";