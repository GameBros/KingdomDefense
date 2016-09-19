if (state == 0)
{
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,direction,c_white,1);
    if ( global.level_state != 1 && global.level_state != 3 )
    {
    scrProjektileDraw();
    }
}
