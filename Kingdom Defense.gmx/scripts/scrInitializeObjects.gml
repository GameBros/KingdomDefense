//Minitower 
unit = ds_list_create();
scrInitializeUnit (14,0,300,0,50,sCard_object1,0,0,0,0,0,0,1,noone,0,0);

//Potion 
unit = ds_list_create();
scrInitializeUnit (15,0,0,0,30,sCard_object2,0,0,0,0,0,20,0,noone,0,0);

/*scrInitializeUnit:
argument0 = Index of unit
argument1 = Def
argument2 = Hp
argument3 = attack range
argument4 = Price of the unit
argument5 = Sprite of the unit card 
argument6 = MgcDef
argument7 = Speed of running
argument8 = Atk
argument9 = Lk       //0 = no critical; 100 = always critical
argument10 = AtkSp   //100-x = number of frames passing until the next attack, depends on the used weapon
argument11 = MgcAtk
argument12 = amount of enemys who can attack the unit at the same time
argument13 = Weapon Sprite
argument14 = Element
*/
