x1 = argument0;
y1 = argument1;
aktHP = argument2;
maxHP = argument3;
color = argument4;
type = argument5;       //living = 0 or not living = 1

if (type == 0)
{
    if (color==1) sprite=sHealthBlue;
    else sprite=sHealthRed;
}
else
{
    if (color==1) sprite=sHealth2Player;
    else sprite=sHealth2Enemy;    
}

image = 9 - (aktHP/maxHP) * 9 ;

draw_set_alpha(1);
draw_sprite(sprite,image,x1,y1);
