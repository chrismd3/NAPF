/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	24;				//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epochconfig
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxVehicleLimit = 300; // Default = 50
MaxDynamicDebris = 500; // Default = 100
dayz_MapArea = 18000; // Default = 10000
dayz_minpos = -1000; 
dayz_maxpos = 26000;
DZE_teleport = [99999,99999,99999,99999,99999];

DZE_BackpackGuard = true;

DZE_GodModeBase = false;

DZE_HeliLift = true;

//Epoch Config Variables
call compile preprocessFileLineNumbers "config\epochconfig.sqf";	

// Dayz Epoch Events
EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];

//Load Custom Player Actions
//IMPORTANT: Must happen very early
execVM "actions.sqf";

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	

};
	
	// Master Key
	[] execVM "scripts\vehiclefunctions.sqf";
	
	// Evac Chopper
	[] execVM "addons\JAEM\EvacChopper_init.sqf";
	
	["elevator"] execVM "elevator\elevator_init.sqf";
};

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

// Folder Manifest

execVM "addons\init.sqf";
execVM "ca\modules\functions\init.sqf";	
execVM "config\init.sqf";
execVM "elevator\elevator_init.sqf";	
execVM "init\init.sqf";	
[] execVM "R3F_ARTY_AND_LOG\init.sqf";	
execVM "RC\init.sqf";	
execVM "scripts\init.sqf";