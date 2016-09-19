myGroup = 3;
scrUnitCreate();

//Unique things for Healer
//-----------------------------------------------------------------------------------------
weaponX = 15; 
weaponY = -2;
scrHSAnimations();
aT = 6;     //aT = attack Trigger, creates the collision shape when reaching this trigger
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)

//states
act = 0;
waiting = 1;
healing = 2;
waitAfterHeal = 3;
backToWait = 4;

state = act;

//other
toNextFrame = animSp;
distMaxHeal = myRn;
mustHealUnit = noone;
global.fiendThere = false;

healBallReached = false;

//-----------------------------------------------------------------------------------------
