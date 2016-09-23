global.allFiendsInRange = ds_list_create();
global.me = id;

with(oEnemy)
{
    dist = abs(x-global.me.x);
    if (dist<global.me.myRn)
    {
        dire = point_direction(global.me.x,global.me.y,x,y);
        
        if( scrASDirOk(global.me,id) )
        ds_list_add(global.allFiendsInRange,id);
    }
}

if (ds_list_size(global.allFiendsInRange)>0)   
{ 
    loadingShot = true;
    state = waiting;
    curFrame = 1;
    sprite_index = attackSprite;
    scrASWaiting();
}
