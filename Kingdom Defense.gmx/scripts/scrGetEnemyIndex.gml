//returns the wanted variable of the wanted unit

//argument0 = enemy name

if ( argument0 == oSlime1 )
return 0;

if ( argument0 == oSlime2 )
return 1;

if ( argument0 == oIceBug )
return 2;

if ( argument0 == oSkull )
return 3;

return ds_list_find_value(u,argument1);
