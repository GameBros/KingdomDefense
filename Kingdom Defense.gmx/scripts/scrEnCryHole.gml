if ( state == 1 )
{
    image_alpha -= 0.01;
    
    if ( image_alpha <= 0 )    
    state = 2;
}

if ( state == 3 )
{
    image_alpha += 0.01;
    
    if ( image_alpha >= 1 )    
    state = 4;
}
