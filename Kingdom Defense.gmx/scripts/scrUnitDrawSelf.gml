//Draws the unit
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
    
    myAlpha-=0.1;
    
    if myAlpha<0 then myAlpha=0;
}
