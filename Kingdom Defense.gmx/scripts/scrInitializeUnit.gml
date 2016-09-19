//- Initializes the main properties of one unit class

/*
argument0 = Index of unit
argument1 = Def
argument2 = Hp
argument3 = attack range in slots
argument4 = Price of the unit
argument5 = Sprite of the unit card 
argument6 = MgcDef
argument7 = Speed of running
argument8 = Atk
argument9 = Lk       //0 = no critical; 100 = always critical
argument10 = AtkSp   //100-x = number of frames passing between 2 attacks, depends on the used weapon
argument11 = MgcAtk
argument12 = equipped weapon
argument13 = Element
argument14 = equipped gear
argument15 = hp regeneration
*/
unit = ds_list_create();

ds_list_add(unit,argument0);
ds_list_add(unit,argument1);    
ds_list_add(unit,argument2);
ds_list_add(unit,argument3);
ds_list_add(unit,argument4);
ds_list_add(unit,argument5);
ds_list_add(unit,argument6);
ds_list_add(unit,argument7);    
ds_list_add(unit,argument8);
ds_list_add(unit,argument9);
ds_list_add(unit,argument10);
ds_list_add(unit,argument11);
ds_list_add(unit,argument12);
ds_list_add(unit,argument13);
ds_list_add(unit,argument14);
ds_list_add(unit,argument15);

return unit;

