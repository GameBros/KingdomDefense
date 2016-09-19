if ( mouse_check_button_pressed(mb_left) ) 
{
    if( image_index == 1 )
    image_index = 2;
    else
    instance_destroy();
}

if( mouse_check_button_released(mb_left) )
{
    if ( image_index == 2 )
    {
        switch( controlIndex )
        {
            case 0:
                if( instance_exists(myUnit) )
                {
                    with myUnit
                    {
                        wantsToMove = true;
                    }       
                }
                else
                {
                    with oUnit
                    {
                        if( chosen )
                        scrUnitDestroy();
                    }  
                }
            break;
            case 1:
                if( instance_exists(myUnit) )
                {
                    with myUnit
                    {
                        scrUnitDestroy();
                    }       
                }
                else
                {
                    with oUnit
                    {
                        if( chosen )
                        wantsToMove = true;
                    }  
                }                
            break;
        }
    
        instance_destroy();
    }
}    
