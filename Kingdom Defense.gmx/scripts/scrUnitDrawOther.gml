//Checks whether the mouse is on a unit, when true -> do something
if ( global.level_state != 1 )
{
    scrHealthStay();

    drawHealth = false;
    
    if (hpBarStays)
    drawHealth = true;
    
    if (point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom) ) 
    {
        drawHealth = true;
    }
    
    if ( drawHealth )
    script_execute(scrDrawHealth,x,bbox_top-10,myHpAct,myHpMax,0,myGroup == -1);
}

if( chosen )
{
    //activate the slots this unit could move on
    with oSlot
    {
        if( unlocked )
        state = 1;
    }
}

if( myGroup != -1 )
{
    if (state != -1 )
    scrUnitUnlockSlots();
    
    if( instance_exists(fiend) )
    {
        image_xscale = 1;
        if( fiend.x < x )
        image_xscale = -1;
    }
}


