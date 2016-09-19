//lances
wp = ds_list_create();

ds_list_add(wp,2); //Attack
ds_list_add(wp,280); //in this case its the attackrange of the weapon
ds_list_add(wp,0); //Attackspeed
ds_list_add(wp,sSp1);
ds_list_add(wp,0);    //Luck
ds_list_add(wp,30); //range for mellee attacks with the lance

ds_list_add(global.weapons,wp);

