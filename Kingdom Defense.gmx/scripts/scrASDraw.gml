//Unique things for Archers:

//If mouse rolls over + hp bar
scrUnitDrawOther();

//State manager
if ( global.level_state != 1 )
scrASStateExecute();
else
{
    speed = 0;
    animSp = 0;
}

//Manage Animation
if ( state == defending || loadingShot || state == moving )
{    
    toNextFrame -= 1; //time delay until next frame shall be drawn

    if (toNextFrame == 0)
    {
        curFrameIsLast = false;     
        curFrameIsFirst = false; 
        
        toNextFrame = animSp;
        curFrame += 1;
    
        if( state == defending || state == moving )
        numbOfFrames = ds_list_size(curAnim);
        else
        numbOfFrames = sprite_get_number(sASAtkBody);
    
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

//Draw unit
image_yscale = 1;

if( state == defending || state == moving )
{
    numbOfFrames = ds_list_size(curAnim);
    
    if (curFrame+1 > numbOfFrames )
    {
        curFrame = 0;
    }

    frame = ds_list_find_value(curAnim,curFrame)
    sprite_index = ds_list_find_value(frame,0)

    if (isVisible)
    draw_sprite_ext(sprite_index,curFrame,x,y,image_xscale,image_yscale,0,c_white,1);

    if (myAlpha > 0) 
    {
        scrFadeColor(sprite_index,dmgColor,myAlpha,curFrame,0,0,0);    
        myAlpha -= 0.1;
    
        if myAlpha<0 then myAlpha=0;
    }
    
    frame = ds_list_find_value(curAnim,curFrame)

    cornerX = x-sprite_get_xoffset(sprite_index);

    X = cornerX + ds_list_find_value(frame,3);
    r = scrGetWeaponRot();
    cornerY = y-sprite_get_yoffset(sprite_index);

    if(isVisible)
    draw_sprite_ext(ds_list_find_value(frame,1),1,X,cornerY+ds_list_find_value(frame,4),1,1,r,c_white,1);
}
else
{
    if( dir > 90 && dir <= 270 )
    image_yscale = -1;
    
    if (isVisible)
    draw_sprite_ext(attackSprite,0,x,y,image_xscale,1,0,c_white,1)

    if (myAlpha > 0) 
    {
        scrFadeColor(attackSprite,dmgColor,myAlpha,0,0,0,0);    
        myAlpha -= 0.1;
    
        if myAlpha<0 then myAlpha=0;
    }    
    
    draw_sprite_ext(sASAtkBody,curFrame,x,y,1,image_yscale,dir,c_white,1);
    
    if (myAlpha > 0)
    scrFadeColor(sASAtkBody,dmgColor,myAlpha,curFrame,dir,0,0); 
    
    //Draw weapon
    if(isVisible)
    draw_sprite_ext(myWSpr,curFrame,wp_x,wp_y,1,1,dir,c_white,1);
}

//debugging
draw_text(x,y-50,string(dir));

//Dead?
scrUnitCheckDead();

isVisible = true;
