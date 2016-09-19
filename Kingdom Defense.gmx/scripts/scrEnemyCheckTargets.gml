global.me = id;
global.unitAtkSave = atkUnit;
global.unitAtk = noone;
   
with oUnit
{
    if( global.me.x > x)
    {
        if( myGroup == -1 )
        {
            if( bbox_right >= global.me.x-global.me.myRn )
            {
                global.unitAtk = id;            
            }
        }
        else
        {
            if( !global.me.isAir )
            {
                if( x >= global.me.x-global.me.myRn )
                {
                    if( stopsEnemies || global.unitAtkSave == id )
                    {  
                        if( global.unitAtkSave != id)
                        {
                            ds_list_add(enemiesStopping,global.me);
                            if( ds_list_size(enemiesStopping) >= myEnmCapacity )
                                stopsEnemies = false;
                        }
                        global.unitAtk = id;
                    }
                }
            }
        }
    }
}

atkUnit = global.unitAtk;
