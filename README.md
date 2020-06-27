# CityFix
A Warhammer Online addon consisting of simple chat commands to fix common UI issues encountered during city sieges.

## Usage

Type these commands in the chat window to use the addon.

    /city

Brings up the list of commands below in-game
 
    /city group
    /city party

Shows the city/scenario groups and parties window. Equal to: /script WindowSetShowing ("ScenarioGroupWindow", true)

    /city join

Tries to bring up the city/scenario join window. Not always possible if the game has completely bugged out. Equal to: /script BroadcastEvent (SystemData.Events.SCENARIO_INSTANCE_JOIN_NOW)

    /city score

Shows the city/scenario scoreboard window. Equal to: /script WindowSetShowing ("ScenarioSummaryWindow", true)

## Installation

Download the addon from the "Releases" section on its GitHub page. Put the "CityFix" folder in Warhammer Online's "Interface/AddOns" folder and then enable the addon in-game.

## Dependencies

Like most Warhammer Online addons it depends on the LibSlash addon. Chances are you already have this installed but if not then you can download it from https://tools.idrinth.de/addons/libslash/. Installation is the same as CityFix; just copy the "LibSlash" folder to Warhammer Online's "Interface/AddOns" folder and enable the addon in-game.

## Contact

Either message me here on Github (@Zomega-WAR), on the Return of Reckoning forums (@Omegus) or in-game on Return of Reckoning (@Zomega on destruction).
