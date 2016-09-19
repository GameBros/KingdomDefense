//Shade
draw_set_alpha(0.4);
width = 0.5*(bbox_right-bbox_left);
draw_ellipse(x-width,global.groundEndY-3,x+width,global.groundEndY+3,false);
draw_set_alpha(1);
