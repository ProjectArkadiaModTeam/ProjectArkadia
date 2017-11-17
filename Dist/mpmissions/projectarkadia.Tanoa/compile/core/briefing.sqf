/**
 *  briefing.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */

if(player diarySubjectExists "rules") exitwith {};

player createDiarySubject ["rules","Rules"];
player createDiaryRecord ["rules",
    [
        "Rules",
        "1. No cheating of any kind.<br/>
        2. Don't be toxic.<br/>
        3. Don't spam/abuse VON.
		4. Stephano is always right"
    ]
];

player createDiarySubject ["features", "Features"];
player createDiaryRecord ["features",
    [
        "Features",
        "ehh nothing yet?</br>"
    ]
];