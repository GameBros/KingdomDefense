// - Drawing of the castle

scrUnitDrawOther();

if (myHpAct <= 0) 
{
    //Level verloren
    sound_play(soDamageCrystalHard);
    repeat(6)
    {
        instance_create(x-xToMid+random(xToMid*2),y-random(yToMid*1.7),oUnitCastlePart);
    }
    
    global.level_status = 2;
    instance_create(x,y,oUnitCastleDestroyed);
    instance_destroy();
}

if ( hp_percent_temp != -1 )
hp_percent_temp = hp_percent;

hp_percent = (myHpAct/myHpMax)* 3;
image_index = hp_percent;

if ( hp_percent_temp == -1 )
hp_percent_temp = hp_percent;

changed = round(hp_percent) != round(hp_percent_temp);

if (changed)
{
    sound_play(soDamageCrystalHard);
    repeat(6)
    {
        instance_create(x-xToMid+random(xToMid*2),y-random(yToMid*1.7),oUnitCastlePart);
    }
}

draw_sprite(sprite_index,image_index,x,y);

if (myAlpha > 0) 
{
    scrFadeColor(sprite_index,c_white,myAlpha,image_index,0,0,0);    
    
    myAlpha-=0.1;
    
    if myAlpha<0 then myAlpha=0;
}
