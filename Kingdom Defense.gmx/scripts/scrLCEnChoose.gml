global.allFiendsInRange = ds_list_create();
global.me = id;

with(oEnemyMelee)
{
    dist = abs(x-global.me.x);
    if (dist < global.me.myRn && dist >= 0)
    {
        ds_list_add(global.allFiendsInRange,id);
    }
}


scrALEnChoose();
