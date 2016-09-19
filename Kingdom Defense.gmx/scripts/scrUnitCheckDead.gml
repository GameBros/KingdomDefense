//This checks whether a unit is dead when true, do something
if (myHpAct <= 0) 
{
    sound_play(soUnitDie);
    death = instance_create(x,y,oDieing);
    death.sprite_index = deathSprite;
    death.image_xscale = image_xscale;   
    mySlot.myObject = noone;  
    global.deadUnit = id;
    
    with oEnemy
    {
        if( atkUnit == global.deadUnit )    
        atkUnit = noone;
    }
    
    instance_destroy();
}
