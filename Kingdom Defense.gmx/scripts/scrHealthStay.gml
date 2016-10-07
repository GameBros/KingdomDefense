if (hpBarStays)
{
    if ( hpBarStayTime > 0 )
    {
        hpBarStayTime -= 1;
    }
    else
    {
        hpBarStays = false;
    }
}

drawHealth = false;

if (hpBarStays)
drawHealth = true;

if (point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom) ) 
{
    drawHealth = true;
}

if ( drawHealth )
script_execute(scrDrawHealth,x,bbox_top-10,myHpAct,myHpMax,0,myGroup == -1);
