enemyKind = argument0;

global.fiendInView = false;
global.me = id;
global.enm = noone;
image_xscale = 1;

with enemyKind
{
    dist = abs(x-global.me.x);
    if( dist >= 0 )
    {
        if ( dist < (global.me.myViewRange*global.slot_distance) )
        {
            global.fiendInView = true;
            if( global.me.x > x )
            global.me.image_xscale = -1;
        }
    
        if ( dist < global.me.myRn )
        {
            global.enm = id;
            
            with( global.me )
            {
                ds_list_clear(enemiesAtking);
                ds_list_add(enemiesAtking,global.enm);
            }
        }
    }
}

return instance_exists(global.enm);
