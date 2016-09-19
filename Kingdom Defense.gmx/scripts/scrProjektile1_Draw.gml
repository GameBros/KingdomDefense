if ( global.level_state != 1 && global.level_state != 3 )
{
if (state == 0)
{
    x += xAdd;

    y = scrProjektileGetY(x1,y1,x2,y2,x3,y3,x);

    direction = point_direction(xprevious,yprevious,x,y);
    
    scrProjektileDraw();
}
}

draw_sprite_ext(sprite_index,image_index,x,y,1,1,direction,c_white,1);
