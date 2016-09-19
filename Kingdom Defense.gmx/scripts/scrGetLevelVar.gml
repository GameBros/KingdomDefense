//returns the wanted variable of the wanted level

//argument0 = continent index
//argument1 = level index
//argument2 = var index
        //var 0 = waves);
        //var 1 = enemyCastle);
        //var 2 = terrainBgs);
        //var 3 = number of slots
        //var 4 = number of unlocked slots from beginning on

continent = ds_list_find_value(global.allContinents,argument0);
level = ds_list_find_value(continent,argument1);
return ds_list_find_value(level,argument2);
