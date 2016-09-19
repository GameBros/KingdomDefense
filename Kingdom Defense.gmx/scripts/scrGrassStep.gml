//What the grass in the title executes every step

y = (2*(480-view_yview[0])+ySave);

if( makeRotation )
{
    //activate next grass?
    if( nextGrassCounter <= nextGrass )
    {    
        if( nextGrassCounter < nextGrass )  
        nextGrassCounter += 1;  
        else
        {
            global.xSave = x; 
            for( global.x = x; global.x< 690; global.x += 1 )
            {
                with oTitleGrass
                {
                    if( x == global.x )
                    {
                        if( !makeRotation && x >= global.xSave )
                        {
                            scrGrassActivate();
                            global.x = 690;
                        }
                    }
                }
            }
            nextGrassCounter += 1;
        }
    }

        if( rotateTimeCounter < rotateTime )
        rotateTimeCounter += 1;
        else
        {
            rotateTimeCounter = 0;
            
            if( rotatePower > 0 )
            {
                rotateTime = rotateTimeShort;
                rotatePower = -rotatePowerS;
            }
            else
            {
                rotateTime = rotateTimeLong;
                rotatePower = rotatePowerL;
            }
        }
    
        image_angle += rotatePower;
}
