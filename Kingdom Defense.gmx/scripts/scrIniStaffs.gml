//staffs
wp = ds_list_create();

ds_list_add(wp,2);                               //Attack ( Healing  )
ds_list_add(wp,140);                              //Range for heal
ds_list_add(wp,0);                               //Attackspeed
ds_list_add(wp,sSt1);                            //Sprite
ds_list_add(wp,sprite_get_width(sSt1)/2);        //Range for melee attacking

ds_list_add(global.weapons,wp);

