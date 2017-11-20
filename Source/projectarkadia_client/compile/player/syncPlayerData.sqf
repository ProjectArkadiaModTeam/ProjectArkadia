/**
 *  syncPlayerData.sqf
 *
 *
 * @mod    	   Project Arkadia
 * @author     Stefan (Stephano) Rasmussen
 *
 */
 
 private["_type","_silent","_data"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_silent = [_this,1,false,[false]] call BIS_fnc_param;;
_data = [];

_silent = false;
switch (_type) do {
    case "stats": {
        private ["_dmg"];
        _dmg = damage player;

        // if the player is unconsious, treat it as dead.
        if (player getVariable ["revivable", false]) then {
            _dmg = 1.0;
        };

        _data = [[
            _dmg,
            getFatigue player
        ]];
        
        if (captive player) then {
            _data = [[
                1.0,
                getFatigue player
            ]];
        };
    };

    case "location": {
        // this is just to make it sync / get past the if statement at the bottom.
        _data = [1];
    };

    case "equipment": {
        private ["_mag"];
        _mag = primaryWeaponMagazine player;

        _data = [
            [
                [primaryWeapon player, secondaryWeapon player, handgunWeapon player],
                weaponsItems player,
                (headgear player),
                [(uniform player), (uniformItems player)],
                [(vest player), (vestItems player)],
                [(backpack player), (backPackItems player)],
                (assignedItems player),
                (goggles player)
            ]
        ];
    };

    case "everything": {
        private ["_dmg"];
        _dmg = damage player;
		diag_log "Syncing Everything";
        // if the player is unconsious, treat it as dead.
        if (player getVariable ["revivable", false]) then {
            _dmg = 1.0;
        };
        
        _data = [
            profileName,
            [
                _dmg,
                getFatigue player
            ],
            [
                [primaryWeapon player, secondaryWeapon player, handgunWeapon player],
                weaponsItems player,
                (headgear player),
                [(uniform player), (uniformItems player)],
                [(vest player), (vestItems player)],
                [(backpack player), (backPackItems player)],
                (assignedItems player),
                (goggles player)
            ]
        ];
    };
};

diag_log _data;

if (count _data > 0) then {
    [[player, _type, _data, _silent],"ARK_fnc_serverSyncPlayerData",false,false] spawn BIS_fnc_MP;

    // We will only reset timers etc when its a full sync.
    if (_type == "everything") then {
        // Reset the last sync timer
        ARK_gbl_lastSync = 0;

        // Specify when the next automatic sync will happen.
        //ARK_gbl_nextSync = (random 300) + 600;
		ARK_gbl_nextSync = 60;

    };
};