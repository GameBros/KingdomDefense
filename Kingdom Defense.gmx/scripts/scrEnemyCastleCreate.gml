// - argument0 = index

yToMid = 0;
y_createState = 0;

start = false;
myHpMax = 50;
myHpAct = myHpMax;
isAir = false;

//Stats
myAlpha = 0; 
myIndex = -1;

//States
state = 0;

//Animations
curFrame = 0;
animSp = 2;

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
yToMid = ( bbox_bottom - bbox_top ) / 2;
xToMid = ( bbox_right - bbox_left ) / 2;

//Other
atkUnit = noone;   //Unit this enemy attacks
slotNearMe = noone;

//Status effects
iced = false;
ice_stayTime = 0;
