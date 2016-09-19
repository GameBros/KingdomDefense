//animations and sprites
//argument0 = unit index (0 = soldier,...)

//Things that EVERY unit needs
xprev = x;
yprev = y;

dmgColor = c_white;
myAlpha = 0;

hpBarStays = false;                  //whether hp bar is visible
hpBarStayTime = 0;
hpBarStayTimeMax = 150;

yToMid = 0;     //For the effects adaption
xToMid = 4;     //For the effects adaption
isVisible = false;  
fiend = noone;
    
//For global state = setup
xPos_go = 0;

//Things that has every unit expect of the minitwoer
if (argument0 != 8)
{
    win = false;        //is true when units begin to celebr<te their win in the level
    waitUntilAtk = myAtkSp;
}   

curFrame = 0;        //which frame of the current animation should be drawn
curFrameIsLast = false;     //Whether the current frame is the last
curFrameIsFirst = false;     //Whether the current frame is the first

mySlot = noone;
chosen = false;

//Cooldowns


//Hp regeneration
regen_timeMax = 50;
regen_timer = regen_timeMax;

//States
moving = -1;

//moving
myMvSlot = noone;
wantsToMove = false;

//attacking enemy
enemiesAtking = ds_list_create();
enemiesStopping = ds_list_create();
stopsEnemies = true;    //when capacity of enms is full this unit doesn´t stop enemies

