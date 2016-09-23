// - argument0 = index

//Stats
myAlpha = 0; 
myIndex = scrGetEnemyVar(argument0,0);
myAtk = scrGetEnemyVar(myIndex,1);
mySp = scrGetEnemyVar(myIndex,2);
myAtkSp = 100 - scrGetEnemyVar(myIndex,3);
myDef = scrGetEnemyVar(myIndex,4);
myLuck = scrGetEnemyVar(myIndex,5);
myHpMax =scrGetEnemyVar(myIndex,6);
myHpAct = myHpMax;
myRn = scrGetEnemyVar(myIndex,7) * global.slot_distance;
myMgcDef = scrGetEnemyVar(myIndex,8);
myMgcAtk = scrGetEnemyVar(myIndex,9);
isAir = scrGetEnemyVar(myIndex,10);
goldGive = scrGetEnemyVar(myIndex,13);
goldDropChance = scrGetEnemyVar(myIndex,14);
myObjectAtk = scrGetEnemyVar(myIndex,15);

//States
walkingLeft = 1;
attacking = 2;
skilling = 3;
waiting = 4;

state = walkingLeft;

//Animations
waitUntilAtk = myAtkSp;;
curFrame = 0;
animSp = 2;
speed = mySp;

animations = scrGetEnemyVar(argument0,15);
animWalking = ds_list_find_value(animations,0);
animAttacking = ds_list_find_value(animations,1);
animDieing = ds_list_find_value(animations,2);
colSprite = ds_list_find_value(animations,3);
animDieing2 = ds_list_find_value(animations,4);
curAnim = animWalking;

//Visual
drawColor = c_white;                //can be blue, when iced 
dmgColor = c_white;
createFade_alpha = 0;
createFade_amount = 0;
myAlpha = 1;

toNextFrame = animSp;

//Hp bar
hpBarStays = false;
hpBarStayTime = 0;
hpBarStayTimeMax = 150;

//Sprite
sprite_index = animWalking;
yToMid = ( bbox_bottom - bbox_top ) / 2;
xToMid = ( bbox_right - bbox_left ) / 2;

//Other
atkFrame = scrGetEnemyVar(argument0,12);
atkUnit = noone;   //Unit this enemy attacks
slotNearMe = noone;

//Status effects
iced = false;
ice_stayTime = 0;
