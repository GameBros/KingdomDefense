//- Initializes the overworld parameters like position of
// hero and what levels are unlocked

// ++++++++++ Player Position ++++++++++++
global.playerCon = 1; // Continent where player is 
global.playerSpotIndex = 1; // Index of the spot the player is on at the moment

// ++++++++++ Other ++++++++++++
global.con1_freePoints = ds_list_create();
ds_list_add(global.con1_freePoints, 1);
