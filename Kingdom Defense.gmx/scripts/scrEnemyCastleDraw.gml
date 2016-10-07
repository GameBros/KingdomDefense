if ( y > y_createState && start  )
{
    y -= 0.5;
    
    if ( y <= y_createState )
    {    
        oEnemyCryHole1.state = 1;
        oEnemyCryHole2.state = 1;
        global.level_state = -3;
    }
}

if( myHpAct <= 0 )
{
    instance_create(x,y,oEnCryEx_1);
}

scrHealthStay();

draw_sprite(sprite_index,0,x,y);
