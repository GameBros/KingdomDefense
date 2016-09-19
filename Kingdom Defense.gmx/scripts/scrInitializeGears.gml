//- initializes gears

global.gears = ds_list_create();

//helmets
gr = ds_list_create();
ds_list_add(gr,3);                                //Attack
ds_list_add(gr,3);                                //Def
ds_list_add(gr,3);                                //Magic Def
ds_list_add(gr,0);                                //Attackspeed
ds_list_add(gr,sSw1);                             //Sprite of the gear
ds_list_add(gr,0);                                //Luck

ds_list_add(global.gears,gr);
