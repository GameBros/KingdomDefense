//Draw self

if(isVisible)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_white,1);
else
isVisible = true;

if (myAlpha > 0) 
{
    scrFadeColor(sprite_index,dmgColor,myAlpha,image_index,0,0,0);
    myAlpha-=0.1;
    
    if myAlpha<0 then myAlpha=0;
}

if( round(image_index) == sprite_get_number(sprite_index) )
{
    image_index = 0;
    if( pause )
    {
        pause = false;
        pauseCounter = -1;
        sprite_index = sDGDig;
    }
    if( finish )
    {
        sprite_index = pauseSprite;
        finish = false;
        pause = true;
    }
}

//Draw dirt
if( sprite_index == sDGDig )
draw_sprite_ext(dA_spr,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
