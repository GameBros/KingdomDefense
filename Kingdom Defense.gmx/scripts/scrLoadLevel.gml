// - Loads every variables for a level 

//argument0 = name of level

//Things which are always the same

global.room_type = 2;
global.level_state = -1;           //-1 = prepare, 0 = running, 1 = complete, 2 = lost
global.crystals = 20;
global.lastWave = false;
global.canChooseUnit = true;

//Specific things

global.lv_index = scrOvWdGetLvIndex(argument0);
global.lv_terrainId = scrGetLevelVar(global.playerCon-1,global.lv_index,real(2));
global.lv_waves = scrGetLevelVar(global.playerCon-1,global.lv_index,0);
global.lv_bgs = scrGetLevelVar(global.playerCon-1,global.lv_index,1);
global.lv_numberOfSlots = scrGetLevelVar(global.playerCon-1,global.lv_index,3);
global.lv_unlockedSlots = scrGetLevelVar(global.playerCon-1,global.lv_index,4);

global.lv_enCastle_essences = 5;
