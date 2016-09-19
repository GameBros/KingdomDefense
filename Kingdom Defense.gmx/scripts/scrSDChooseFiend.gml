global.fiendThere = false;
global.fiendInView = false;

global.me = id;
global.enm = noone;
with oEnemyMelee
{
    if( instance_exists(global.me) )
    {
        dist = (x-global.me.x);
        if( dist >= 0 )
        {
            if ( dist < global.me.myRn )
            global.enm = id;  
        }
    }
}

fiend = global.enm;


