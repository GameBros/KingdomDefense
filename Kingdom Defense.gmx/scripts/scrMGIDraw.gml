//If mouse rolls over + hp bar
scrUnitDrawOther();

//turning around
numbOfFrames = sprite_get_number(curAnim);

if ( state != waiting )
{    
    toNextFrame -= 1; //time delay until next frame shall be drawn

    if (toNextFrame == 0)
    {
        curFrameIsLast = false;     
        curFrameIsFirst = false; 
        
        toNextFrame = animSp;
        curFrame += 1;
    
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

//State manager
if ( global.level_state != 1 )
scrMGIStateExecute();

//Draws the unit
sprite_index = curAnim;

if (isVisible)
draw_sprite_ext(sprite_index,curFrame,x,y,image_xscale,image_yscale,0,c_white,1);

if (myAlpha > 0) 
{
    scrFadeColor(sprite_index,dmgColor,myAlpha,curFrame,0,0,0);    
    myAlpha-=0.3;
    
    if myAlpha<0 then myAlpha=0;
}

if ( x > room_width + 30 )
instance_destroy();

isVisible = true;

//Dead?
scrUnitCheckDead();
