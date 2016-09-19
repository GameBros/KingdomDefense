r = ds_list_find_value(frame,2);

//mirror if walking left
if( image_xscale == -1 )
{
    x2 = x - lengthdir_x(100,r);
    y2 = y + lengthdir_y(100,r);
    
    r = point_direction(x,y,x2,y2);
}

return r;
