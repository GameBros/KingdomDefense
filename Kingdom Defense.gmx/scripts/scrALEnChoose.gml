fiends_amount = ds_list_size(global.allFiendsInRange) ;
fiend = noone;
image_xscale = 1;

if (fiends_amount > 0)
{
    global.allMonsterAttackers = ds_list_create();
    attackers = ds_list_create(); 
    ds_list_clear(attackers);

    for(i = 0; i < fiends_amount; i+= 1)
    {
        global.act = ds_list_find_value(global.allFiendsInRange,i);
        global.numberOfAttackers = 0;
        global.me = id;
        
        with(oUnitAct)
        {
            if (global.me != id && global.act == fiend)
            {
                global.numberOfAttackers += 1; 
            }
        } 

        ds_list_add(attackers,global.numberOfAttackers);      
            
        // Create MonsterAttackersAbstract Objects and save to list
        tmpMonAtks = instance_create(0,0, monAttackersAbstract);
        tmpMonAtks.attackers = global.numberOfAttackers;
        tmpMonAtks.monsterID = global.act;
        ds_list_add(global.allMonsterAttackers, tmpMonAtks);
    }
    
    // Ascending(Aufsteigend) sort of attackers 
    ds_list_sort(attackers, true);
    smallestNumber = ds_list_find_value(attackers,0);
    fiendsSorted = ds_list_create();
    
    for(i = 0; i < ds_list_size(attackers); i+= 1)
    {
        for(ii = 0; ii < ds_list_size(attackers); ii += 1)
        {
            now = ds_list_find_value(global.allMonsterAttackers,ii);
            
            if (now.attackers == smallestNumber)
            {
                ds_list_add(fiendsSorted,now.monsterID);
            }
        }
    }
    fiend = ds_list_find_value(fiendsSorted,0);   
    ds_list_clear(enemiesAtking);
    ds_list_add(enemiesAtking,fiend);

    if( instance_exists(fiend) )
    {
        if( fiend.x < x )
        image_xscale = -1;
    }
    
    with monAttackersAbstract
        instance_destroy();
}
