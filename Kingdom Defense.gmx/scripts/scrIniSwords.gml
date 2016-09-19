//swords
wp = ds_list_create();
ds_list_add(wp,3);                                //Attack
ds_list_add(wp,12+(sprite_get_width(sSw1)/2));    //Length, will be the range 
ds_list_add(wp,0);                                //Attackspeed
ds_list_add(wp,sSw1);                             //Sprite of the weapon
ds_list_add(wp,0);                                //Luck

ds_list_add(global.weapons,wp);

