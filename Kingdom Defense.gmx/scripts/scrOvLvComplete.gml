//Save that this level was cleared!
global.levels_finished += 1;
spot = mySpotObj; 

toAdd = ds_list_create();
ds_list_copy(toAdd,spot.myConnects);

with ( oOvPoint )
{
    freeSave = free;
}

switch( global.playerCon )
{
    case 1:     for( i = 0; i < ds_list_size(toAdd);i += 1 )
                {
                    index = ds_list_find_value(toAdd,i);
                    ds_list_add(global.con1_freePoints,index);
                    
                    if( scrGetOvPointByIndex(index).myLevel == noone )
                    {
                        //This is a way point
                        addFromWayPoint = ds_list_create();
                        ds_list_copy(addFromWayPoint,scrGetOvPointByIndex(index).myConnects);
                        for( ii = 0; ii < ds_list_size(addFromWayPoint);ii += 1 )
                        {
                            index2 = ds_list_find_value(addFromWayPoint,ii);
                            if( ds_list_find_index(global.con1_freePoints,index2) == -1 )
                            ds_list_add(global.con1_freePoints,index2);
                        }
                    }
                }
    break;
}

with ( oOvPoint )
{
    scrOvWdPointCreate();
    
    if ( !freeSave && free && room_exists(myLevel))
    {
        state = 0;
        df = instance_create(x,y,oOvSpotAppear);
        df.mySp = id;   
    }

    if( freeSave && free )
    visible = true;
}

global.level_state = 0;
