/**************************************************************************************
			        Survival Servers Epoch Config
**************************************************************************************/

//Enable purchased vehicle parachute spawning setting this to true. (Default: false)
DZE_TRADER_SPAWNMODE = false;

//Set the Amount of possible heli Crashes on Spawn
MaxHeliCrashes= 5; // Default = 5

//Enable full moon nights by setting this to true. (Default: false)
dayz_fullMoonNights = true;

//Controls the max overall vehicle limit if this limit is reached no new vehicles will spawn.
MaxVehicleLimit = 250;

//Experimental feature that will parachute spawn all players into the game. (Default: false)
dayz_paraSpawn = true;

//Allows adding more potential spawn points. PLEASE NOTE: The extra markers named spawn5 - spawn10 must exist. (Default: 4)
//spawnMarkerCount = 10;

//Controls animal spawn limits (Default: 8)
dayz_maxAnimals = 20;

//Enables the ability to tame dogs with raw meat. (Default: false)
dayz_tameDogs = true;

//Sets the lowest possible damage a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleDamageLow = 25;

//Sets the highest possible damage a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleDamageHigh = 75;

//Sets the lowest possible fuel level a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleFuelLow = 25;

//Sets the highest possible fuel level a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleFuelHigh = 75;

//Max number of zombies spawned per player. (Default: 40)
dayz_maxLocalZombies = 30;

//Starting global max zombie count, this will increase for each player within 400m (Default: 40)
dayz_maxGlobalZombiesInit = 40;

//This is the amount of global zombie limit increase per player within 400m (Default: 10)
dayz_maxGlobalZombiesIncrease = 10;

//Total zombie limit (Default: 500)
dayz_maxZeds = 500;

//Disables zombies attacking vehicles.  (Default: false)
dayz_zedsAttackVehicles = true;

//Controls the distance that you can sell a vehicle to the traders.
dayz_sellDistance = 40;
dayz_sellDistance_vehicle = 40;
dayz_sellDistance_boat = 50;
dayz_sellDistance_air = 60;

//true will enable debug so that road debris and new vehicle spawns are visible via map markers. Also debug will enable "Save to arma.RPT" that allows access of a tool to obtain lootpos information for buildings used for adding support for additional maps. (Default: false)
DZEdebug = false;

//To change how many debris spawn edit the MaxDynamicDebris variable in the missions init.sqf.
MaxDynamicDebris = 100; // Max number of road debris spawns (Default: 100)

//Customize fresh spawn loadout
DefaultMagazines = ["ItemBandage","ItemBandage","ItemPainkiller","17Rnd_9x19_glock17","17Rnd_9x19_glock17"];  
DefaultWeapons = ["glock17_EP1","ItemFlashlight","ItemMap"];  
DefaultBackpack = "US_Patrol_Pack_EP1";  
DefaultBackpackWeapon = ""; 

//Customize Death Messages
//Enables global chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgGlobal = false;

//Enables side chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgSide = false;

//Enables global title text messaging of player deaths.  (Default: false)
DZE_DeathMsgTitleText = true;

//Change amount of ammo boxes that spawn on the server.
MaxAmmoBoxes = 25;

//Change amount of mining veins on the server.
MaxMineVeins = 50;

//Enables Helicopter Lifting
DZE_HeliLift = true;

//Enables Player to Spawn as Zombie after being killed by them
DZE_PlayerZed = true;

// (Default: 25)
DZE_HumanityTargetDistance = 25;

// (Default: true)
DZE_FriendlySaving = true;

//If True will allow building on roads
DZE_BuildOnRoads = true;

// Custom Mission Loot Table (Default: false)
DZE_MissionLootTable = false;

// Loot Spawn Timer (Default: 10)
DZE_LootSpawnTimer = 10;

//Enable/Disable backpack contents being wiped if logging out or losing connection beside another player.
DZE_BackpackGuard = true; //Default = true, true to enable, false to disable

//Change the number of constructed objects within range of a 30m Plot Pole. (default=150). Be very carefull with this number, as setting it too high will cause a huge amount of local lag**
DZE_BuildingLimit = 150; 

//Non destructable bases
DZE_GodModeBase = true;

//DZE_requireplot override variable added
DZE_requireplot = 1; 
