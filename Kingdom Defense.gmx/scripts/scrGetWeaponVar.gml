//returns the wanted variable of the wanted weapon

//argument0 = weapongroup index (0 - 16)
//argument1 = variable index (0 -10)

wp = ds_list_find_value(global.weapons,argument0);

return ds_list_find_value(wp,argument1);
