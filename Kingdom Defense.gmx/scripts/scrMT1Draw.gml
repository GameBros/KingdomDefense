//draw self
if ( hp_percent_temp != -1 )
hp_percent_temp = hp_percent;

hp_percent = 6-((myHpAct/myHpMax)*6);
image_index = hp_percent;

if ( hp_percent_temp == -1 )
hp_percent_temp = hp_percent;

changed = round(hp_percent) != round(hp_percent_temp);

if (changed)
{
    sound_play(soDamageCrystalHard);
    repeat(3)
    {
        instance_create(x-xToMid+random(xToMid*2),y-random(yToMid*1.7),oUnitCastlePart);
    }
}

if ( isVisible )
{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
}
else
isVisible = true;

//If mouse rolls over + hp bar
scrUnitDrawOther();

//Image blending
if (myAlpha > 0) 
{
    scrFadeColor(sprite_index,dmgColor,myAlpha,image_index,0,0,0);    

    myAlpha-=0.3;

    if myAlpha<0 then myAlpha=0;
}

//Check whether dead
if (myHpAct <= 0)
{
    sound_play(soDamageCrystalHard);
    repeat(3)
    {
        instance_create(x-xToMid+random(xToMid*2),y-random(yToMid*1.7),oUnitCastlePart);
    }
    
    mySlot.myUnit = noone;
    instance_destroy();
}
