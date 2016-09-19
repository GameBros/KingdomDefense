if( !iced && ice_stayTime != 0 )
{
    speed /= 2;
    drawColor = c_blue;
    iced = true;
}

if( iced && ice_stayTime != 0 )
{
    ice_stayTime -= 1;
    
    if( ice_stayTime == 0 )
    {
        speed = mySp;
        iced = false;
        drawColor = c_white;
    }
}
