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
//Draws the weapon of unit
frame = ds_list_find_value(curAnim,curFrame)

cornerX = x-sprite_get_xoffset(sprite_index);
cornerY = y-sprite_get_yoffset(sprite_index);

X = cornerX + ds_list_find_value(frame,3);

if( image_xscale == -1 )
X = x - (X - x);

r = scrGetWeaponRot();

if(isVisible)
draw_sprite_ext(ds_list_find_value(frame,1),0,X,cornerY+ds_list_find_value(frame,4),1,image_xscale,r,c_white,1);

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
