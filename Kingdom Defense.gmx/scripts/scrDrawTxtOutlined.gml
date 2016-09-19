// Draws a text with an outline
//argument0 = string
//argument1 = font small
//argument2 = font big
//argument3 = x
//argument4 = y
//argument5 = foreground color
//argument6 = background color 

//background (black)
draw_set_font(argument2);
draw_set_color(argument6);
draw_set_alpha(1);
draw_text(argument3-1,argument4,argument0);
draw_text(argument3,argument4,argument0);
draw_text(argument3+1,argument4,argument0);
draw_text(argument3,argument4-1,argument0);
draw_text(argument3,argument4+1,argument0);

//foreground (white)
draw_set_font(argument1);
draw_set_color(argument5);
draw_text(argument3,argument4,argument0);
