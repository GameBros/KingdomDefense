//- Initializes the second part of main properties of one unit class

/*
argument0 = unit as list
argument1 = view range, how many slots in front of a unit are setted free 
argument2 = how many enemies this unit can stop at the same time
argument3 = 
argument4 = 
*/

ds_list_add(argument0,argument1);
ds_list_add(argument0,argument2);

ds_list_add(global.unitsAsData, argument0);
