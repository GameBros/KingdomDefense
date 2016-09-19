//returns the wanted variable of the wanted unit

//argument0 = enemy index (0 - 9)
//argument1 = variable index (0 - 14)

u = ds_list_find_value(global.enemysAsData,argument0);

return ds_list_find_value(u,argument1);
