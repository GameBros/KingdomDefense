xprevious = x;
yprevious = y;

topX = x+lengthdir_x(sprite_get_width(sprite_index)/2,direction);
topY = y+lengthdir_y(sprite_get_width(sprite_index)/2,direction);

if ( myUnitIndex == 0 )
en = collision_line(xprevious,yprevious,topX,topY,oEnemy,1,1);
else
en = collision_line(xprevious,yprevious,topX,topY,oEnemyMelee,1,1);
    
if (instance_exists(en))
{
    sound_play(soDamageNormal2);
    scrActorDamage(en,id,0,0,0,false,c_red);
    instance_destroy();
}

if (y >= global.groundEndY)
{
    sound_play(soArrowStack);

    while(y >= global.groundEndY)
    {
        x -= lengthdir_x(1,direction);
        y -= lengthdir_y(1,direction);   
    }
    
    state = 1;
    image_index = 1;
    alarm[0]=200;
}
