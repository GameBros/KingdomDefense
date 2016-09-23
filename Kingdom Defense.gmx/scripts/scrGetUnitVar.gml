//returns the wanted variable of the wanted unit

//argument0 = unit index (0 - 16)
//argument1 = variable index (0 -20)

u = ds_list_find_value(global.unitsAsData,argument0);

return ds_list_find_value(u,argument1);
