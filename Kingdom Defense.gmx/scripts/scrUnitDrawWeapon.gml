//Draws the weapon of unit
frame = ds_list_find_value(curAnim,curFrame)

cornerX = x-sprite_get_xoffset(sprite_index);
cornerY = y-sprite_get_yoffset(sprite_index);

X = cornerX + ds_list_find_value(frame,3);

if( image_xscale == -1 )
X = x - (X - x);

r = scrGetWeaponRot();

if(isVisible)
draw_sprite_ext(ds_list_find_value(frame,1),0,X,cornerY+ds_list_find_value(frame,4),1,1,r,c_white,1);

