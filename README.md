# ProjectArkadia

#### What is Project Arkadia?
Project Arkadia is a RP/Survival mod for Bohemia Interactives Arma 3.
The mod is set in the world of the CW Tv-series "The 100" .

## Current Features
* Player Persistence (MySQL)
* Simple HUD (fps, health and clan)
* (Very) Simple Clan System

## Usage/Installation

It uses strictly "vanilla" content. No client-side mods required

1. Upload the content of the "Dist" folder to your ARMA 3 dedicated server root (where the arma3server.exe file is).
2. Edit the "LaunchServer.bat" files launch parameters to suit your needs.
3. Edit the "@extDB3\extdb-conf.ini" file, adding your database connection details.
4. Import the "arkserver.sql" to your database.
5. Run the "LaunchServer.bat" file.


## License
https://www.bistudio.com/community/licenses/arma-public-license-share-alike

## 3rd Party Credits
* Shuko for SHK_pos.
* Bryan "Tonic" Boardwine for the async extDB3 script.
* Karel Moricky for the "numberToText" function.
* Torndeco for ExtDB3
