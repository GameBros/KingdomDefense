// Returns the index of the highest/lowest value out of a list
allVals = argument0;
highest = argument1;

if (highest)
ds_list_sort(allVals,false);
else
ds_list_sort(allVals,true);

return ds_list_find_index(allVals,ds_list_find_value(allVals,0));
