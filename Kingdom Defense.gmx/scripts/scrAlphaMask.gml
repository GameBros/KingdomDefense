if (myAlpha > 0) 
{
    scrFadeColor(sprite_index,dmgColor,myAlpha,image_index,0,0,0);    
    
    myAlpha-=0.1;
    
    if myAlpha<0 then myAlpha=0;
}
