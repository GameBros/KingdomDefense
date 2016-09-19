//- Draw scipt for unit Digger

//Unique things for Diggers:

//State manager
if ( global.level_state != 1 )
scrDGDigging();
else
{
    speed = 0;
    animSp = 0;
}

//-----------------------------------------------------------------------------------------

//Main things (digger just have these two parts of normal units drawing parts)
scrUnitDrawOther();
scrDGAnimate();
scrUnitCheckDead();

if (global.debug == true)
{
    draw_text(x-20,y-30,string(x));
    draw_text(x-20,y-50,string(target_x));
}
