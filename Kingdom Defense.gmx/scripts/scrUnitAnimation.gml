//This is called every step in draw event of every unit, it manages the cycle of animations

if (  state != waiting && !(state == defending && curAnim == animAttacking) )
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
