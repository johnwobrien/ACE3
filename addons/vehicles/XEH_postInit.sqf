// by CAA-Picard
#include "script_component.hpp"

if !(hasInterface) exitWith {};

// Add keybinds
["ACE3",
    localize "STR_ACE_SpeedLimiter",
    {
        // Conditions: canInteract
        _exceptions = [];
        if !(_exceptions call EGVAR(common,canInteract)) exitWith {false};
        // Conditions: specific
        if !(ACE_player == driver vehicle ACE_player &&
              {vehicle ACE_player isKindOf 'Car' ||
              {vehicle ACE_player isKindOf 'Tank'}}) exitWith {false};

        // Statement
        [ACE_player, vehicle ACE_player] call FUNC(speedLimiter);
        true
    },
    [211, [false, false, false]],
    false,
    "keydown"
] call cba_fnc_registerKeybind;