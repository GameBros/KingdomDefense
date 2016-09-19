ind1 = min(ds_list_size(global.slots)-1,mySlot.index+myViewRange);

global.rightestUnit = id;
for(i = mySlot.index+1; i < ds_list_size(global.slots); i+= 1)
{
    sl = ds_list_find_value(global.slots,i);
    
    if( instance_exists(sl.myObject) )
    {
        if( object_get_parent(sl.myObject) == oUnitHuman )
        {
            if( sl.myObject > global.rightestUnit.x )
            global.rightestUnit = sl.myObject;
        }
    }
}

for(i = mySlot.index+1; i <= ind1; i+= 1)
{
    sltUnlock = ds_list_find_value(global.slots,i);
    unlck = true;
    
    if( collision_rectangle(x,y+16,sltUnlock.x,sltUnlock.y-32,oEnemy,true,true) )
    unlck = false;
        
    if( unlck )
    {
        sltUnlock.unlocked = true;
    }
}
