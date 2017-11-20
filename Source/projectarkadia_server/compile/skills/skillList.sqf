/**
 * _master.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 /*

	Every Skilltree has an entry skill and 3 branches with 3 skill levels each.
	To keep track of which skills a player has unlocked, all skills will have a unique
	identifier key.

	Skill Template:
	[
		"Skill-Identifier",
		"Skill-Category",
		"Skill-Name",
		"Skill-Description",
		"Skill-Cost",
		[
			"List of other skills needed to unlock this skill",
		],
		[
			"Skill-Modifiers / Whatever the skill does"
		]
	]

	Skill Example:
	[
		"healer-2",
		"survival",
		"Advanced Medical",
		"You will regenerate health faster, and bleedings stop 20% quicker",
		3,
		[
			"survival-entry",
			"healer-1"
		],
		[
			0.1, //10% faster regen
			0.2  //20% faster bleeding stop
		]
	]


// We compile all the skills into a single array on server start, to make it easier to access.

*/
_skills = [];

//Survival Skill Tree
_skills = _skills + [[
	"survival-entry",
	"survival",
	"Survival Essentials",
	"Bleedings stop 10% quicker, You hunger and thirst increases 10% slower.",
	1,
	[],
	[
		0.1, //10% faster bleeding stop
		0.1  //10% slower hunger and first increase
	]
]];

//Misc Branch
_skills = _skills + [[
	"agility-1,
	"survival",
	"Health Boost",
	"You have 10% more health",
	2,
	[
		"survival-entry"
	],
	[
		0.1
	]
]];

_skills = _skills + [[
	"agility-2,
	"survival",
	"Speed Boost",
	"You run 10% faster",
	3,
	[
		"survival-entry",
		"agility-1"
	],
	[
		0.1
	]
]];

_skills = _skills + [[
	"agility-3,
	"survival",
	"Tree Climber",
	"You can climb in trees",
	4,
	[
		"survival-entry",
		"agility-1",
		"agility-2"
	],
	[]
]];


//Healer Branch
_skills = _skills + [[
	"healer-1,
	"survival",
	"Simple First Aid",
	"Bleedings stop 20% quicker, You regain 1% health every 30 seconds",
	2,
	[
		"survival-entry"
	],
	[
		0.2, //20% faster bleeding stop
		0.01,
		30
	]
]];

_skills = _skills + [[
	"healer-2,
	"survival",
	"Healer",
	"Bleedings stop 30% quicker, You regain 2% health every 30 seconds",
	3,
	[
		"survival-entry",
		"healer-1"
	],
	[
		0.3, //30% faster bleeding stop
		0.02,
		30
	]
]];

_skills = _skills + [[
	"healer-3,
	"survival",
	"Master Healer",
	"Bleedings stop 60% quicker, You regain 5% health every 30 seconds",
	4,
	[
		"survival-entry",
		"healer-1",
		"healer-2"
	],
	[
		0.6, //60% faster bleeding stop
		0.05,
		30
	]
]];

//Food Branch
_skills = _skills + [[
	"food-1,
	"survival",
	"Slow Eater",
	"Hunger increases 20% slower",
	2,
	[
		"survival-entry"
	],
	[
		0.2
	]
]];

_skills = _skills + [[
	"food-2,
	"survival",
	"Hydrater",
	"Thirst increases 20% slower",
	2,
	[
		"survival-entry",
		"food-1"
	],
	[
		0.2
	]
]];

_skills = _skills + [[
	"food-3,
	"survival",
	"Raw Food",
	"You have a 80% lesser chance of getting sick by eating raw meat",
	2,
	[
		"survival-entry",
		"food-1",
		"food-2"
	],
	[]
]];


//Return the array of skills to whatever function calls this script
_skills;