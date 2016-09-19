// - Initializes the level data

//main things 
global.level_state = 0;
global.groundEndY = 448;

//slots
global.slot_distance = 28;

global.allContinents = ds_list_create();
               
scrIniTerrainBGs();
scrIniWaves();

//Continent1
continent = ds_list_create();
scrInitLv0();
//scrInitLv1();
ds_list_add(global.allContinents,continent);
//
