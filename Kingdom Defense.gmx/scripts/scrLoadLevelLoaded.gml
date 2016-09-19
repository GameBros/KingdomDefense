// Things that must be loaded after all object are created

startX = 48;

//Creating level components (BG Manager, HUD, Monster Manager, Controller, Camera)
instance_create(0,0,oBGManager);
instance_create(0,0,oHUD);
instance_create(0,0,oMonsterManager);
instance_create(0,0,oController);
instance_create(0,325,oCamera);
instance_create(startX+100,global.groundEndY,oUnitCastle);
instance_create(startX,global.groundEndY-16,oG);

//Slots
actualX = startX+132;
slDist = global.slot_distance*2;
global.slots = ds_list_create();
for ( i = 0; i < global.lv_numberOfSlots; i += 1 )
{
    actualX = actualX+slDist;
    slot = instance_create(actualX,global.groundEndY-16,oSlot);
    slot.index = i;
    
    if( i < global.lv_unlockedSlots )
    slot.unlocked = true;
    
    ds_list_add(global.slots,slot);
}

lastSlot = ds_list_find_value(global.slots,ds_list_size(global.slots)-1);
instance_create(lastSlot.x+slDist,global.groundEndY,oEnemyCryHole1);
instance_create(lastSlot.x+slDist,global.groundEndY,oEnemyCryHole2);
e = instance_create(lastSlot.x+slDist,global.groundEndY-5,oEnemyCastle);
e.y_createState = global.groundEndY-64;

global.enemyFly_y = oEnemyCastle.y-64;

