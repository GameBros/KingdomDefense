//- Draw colored shape on a sprite

//d3d fog trick!!

sprite = argument0;
col = argument1;
alpha = argument2 //fog distance
imageIndex = argument3;
di = argument4;
addedX = argument5;
addedY = argument6;

d3d_set_fog(true,col,0,0);

draw_sprite_ext(sprite,imageIndex,x+addedX,y+addedY,image_xscale,image_yscale,di,c_white,alpha);

d3d_set_fog(false,c_black,0,0);
