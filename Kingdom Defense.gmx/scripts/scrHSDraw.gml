//- Draw scipt for unit Healer

//Unique things for Healers:

//State manager
if ( global.level_state != 1 )
scrHSAct();
else
animSp = 0;

//-----------------------------------------------------------------------------------------

//Main things (everything that every unit class has same, such as animation for Example)
//If mouse rolls over + hp bar
scrUnitDrawOther();

//Draw unit
scrUnitDrawSelf();

//Draw weapon
scrUnitDrawWeapon();

if (  state != waiting )
{    
    toNextFrame -= 1; //time delay until next frame shall be drawn

    if (toNextFrame == 0)
    {
        curFrameIsLast = false;     
        curFrameIsFirst = false; 
        
        toNextFrame = animSp;
        curFrame += 1;
    
        numbOfFrames = ds_list_size(curAnim);
    
        if (curFrame+1 > numbOfFrames )
        {
            curFrame = 0;
            
            if (numbOfFrames > 1)
            curFrameIsLast = true;
        }
        
        if (curFrame-1 == numbOfFrames-1)
        {
            if (numbOfFrames > 1)
            curFrameIsFirst = true;
        }
    }
}

//Dead?
scrUnitCheckDead();

isVisible = true;
