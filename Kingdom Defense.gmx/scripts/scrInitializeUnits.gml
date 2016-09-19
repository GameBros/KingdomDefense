//- Initializes the basic status of all Units at the Start of the Game

global.unitSlots_xStart = 252;
global.unitsAsData = ds_list_create();

//Soldier
unit = scrInitializeUnit (0,4,20,1,10,sCard_unit2,0,2,5,3,80,0,0,0,0,5); 
scrInitializeUnitPart2(unit,2,2);

//Archer
unit = scrInitializeUnit (1,2,20,10,15,sCard_unit3,0,2,3,2,50,0,1,0,1,5); 
scrInitializeUnitPart2(unit,2,1);

//Lancer
unit = scrInitializeUnit (2,1,15,6,20,sCard_unit4,0,2,4,3,60,0,2,0,2,5); 
scrInitializeUnitPart2(unit,2,1);

//Healer
unit = scrInitializeUnit (3,1,30,20,20,sCard_unit5,4,2,2,1,60,5,3,global.light,3,5); 
scrInitializeUnitPart2(unit,2,1);

//Mage Fire
unit = scrInitializeUnit (4,1,30,4,70,sCard_unit6,9,1.5,0,0,80,10,4,global.fire,4,5);  
scrInitializeUnitPart2(unit,2,1);

//Mage Ice
unit = scrInitializeUnit (5,1,30,4,70,sCard_unit7,9,1.5,0,0,40,10,5,global.ice,5,5); 
scrInitializeUnitPart2(unit,2,1);

//Mage Thunder
unit = scrInitializeUnit (6,1,30,8,70,sCard_unit8,9,1.5,0,0,40,10,6,global.thunder,6,5);  
scrInitializeUnitPart2(unit,2,1);

//Thief
unit = scrInitializeUnit (7,4,20,1,10,sCard_unit2,0,4,5,3,80,0,0,0,7,5); 
scrInitializeUnitPart2(unit,2,1);

/*
//-------------------------------------------     UPGRADES     ----------------------------------------------

//Soldier+
unit = ds_list_create();
scrInitializeUnit (9,3,20,10,sCard_unit10,0,2,3,3,80,0,1,sSw1,0,0); 

//Archer+
unit = ds_list_create();
scrInitializeUnit (10,2,20,15,sCard_unit11,0,2,2,2,50,0,1,sBow1At,0,0); 

//Lancer+
unit = ds_list_create();
scrInitializeUnit (11,1,15,20,sCard_unit12,0,2,4,3,60,0,1,sSp1,0,0); 

//Healer+
unit = ds_list_create();
scrInitializeUnit (12,1,30,20,sCard_unit13,4,2,2,1,60,5,1,sSt1,0,0); 

//Mage Fire +
unit = ds_list_create();
scrInitializeUnit (13,1,30,70,sCard_unit14,9,1.5,0,0,40,10,1,sBk1,0,0);

//Mage Ice +
unit = ds_list_create();
scrInitializeUnit (14,1,30,200,70,sCard_unit7,9,1.5,0,0,40,10,1,sBk1,0,0);  

//Mage Thunder +
unit = ds_list_create();
scrInitializeUnit (13,1,30,70,sCard_unit14,9,1.5,0,0,40,10,1,sBk1,0,0);

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
argument12 = equipped Weapon 
argument13 = Element
argument14 = equipped gear
argument15 = hp regeneration

scrInitializeUnitPart2:
argument0 = unit to add the following attributes to
argument1 = viewRange
argument2 = enemy capacity
*/
