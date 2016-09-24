//Main stats
//argument0 = unit index (1 = Soldier,...)

//Things that EVERY unit has, expect from minitowers
myDef = scrGetUnitVar(argument0,1);
myHpMax = scrGetUnitVar(argument0,2);
myHpAct = myHpMax;
myRn = scrGetUnitVar(argument0,3) * global.slot_distance;
myMgcDef = scrGetUnitVar(argument0,6);
mySp = scrGetUnitVar(argument0,7);
myAtk = scrGetUnitVar(argument0,8);
myLuck = scrGetUnitVar(argument0,9);
myAtkSp = 100 - scrGetUnitVar(argument0,10);
myMgcAtk = scrGetUnitVar(argument0,11);
myWeapon = scrGetUnitVar(argument0,12);
myWSpr = scrGetWeaponVar(myWeapon,3);
myElement = scrGetUnitVar(argument0,13);
myHpRegen = scrGetUnitVar(argument0,14);
myGear = scrGetUnitVar(argument0,15);
myViewRange = scrGetUnitVar(argument0,16);
myEnmCapacity = scrGetUnitVar(argument0,17);
myObjAtk = scrGetEnemyVar(argument0,20);
