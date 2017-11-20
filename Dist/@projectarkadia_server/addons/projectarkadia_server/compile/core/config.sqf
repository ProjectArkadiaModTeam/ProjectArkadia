/**
 * config.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 switch (_this select 0) do {
 	 /**
     * Toggle "debug mode" on  or off. When enabled, loot makers will be visible on the map, and the dev menu will be available.
     * @return boolean
     */
    case "debug_mode": {
        true;
    };
	 
	//Spawn player on last known location?
	case "spawn_last_location": {
        true;
    };
	 
	/**
     * The number of seconds from when the player clicks respawn til they respawn.
     * @return integer
     */
    case "respawn_time": {
        15;
    };
	 
	 /**
     * The default loadout for respawns and new players.
     * @return array
     */
    case "spawn_items": {
        [
            [ // Skaikru
                //"", //uniform
                //"", //vest
                //"", //backpack
                //"", // helmet/hat
                //"", //sidearm
                [ //mags

                ],
                [ //misc inventory items

                ],
                [ // misc gear

                ],
                "", //primary
                "" //launcher
            ],
            [ // Treekru
                //"", //uniform
                //"", //vest
                //"", //backpack
                //"", // helmet/hat
                //"", //sidearm
                [ //mags

                ],
                [ //misc inventory items

                ],
                [ // misc gear

                ],
                "", //primary
                "" //launcher
            ],
            [ // Mountain Men
                //"", //uniform
                //"", //vest
                //"", //backpack
                //"", // helmet/hat
                //"", //sidearm
                [ //mags

                ],
                [ //misc inventory items

                ],
                [ // misc gear

                ],
                "", //primary
                "" //launcher
            ],
            [ // Default
                //"", //uniform
                //"", //vest
                //"", //backpack
                //"", // helmet/hat
                //"", //sidearm
                [ //mags

                ],
                [ //misc inventory items

                ],
                [ // misc gear

                ],
                "", //primary
                "" //launcher
            ],
        ];
    };
	 
	 
 }

    /**
     * List of available spawn points (must be circles) and their name.
        [
           "marker_name",
           "Spawn Point Name the player will see"
        ]
     * @return array
     */
case "spawn_points": {
	[
    	[
        	"skaikru",
            "Skaikru"
        ],
			
		[
        	"mountainmen",
            "Mountain Men"
        ],
			
		[
        	"treekru",
            "Treekru"
		],
	];
};