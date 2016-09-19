//bows
wp = ds_list_create();

ds_list_add(wp,2); //Attack
ds_list_add(wp,600); //in this case its the attackrange of the weapon
ds_list_add(wp,0); //Attackspeed
ds_list_add(wp,sBow1At);
ds_list_add(wp,sArrow1);
ds_list_add(wp,0);          //Luck

ds_list_add(global.weapons,wp);

