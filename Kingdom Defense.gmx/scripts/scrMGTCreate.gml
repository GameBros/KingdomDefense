myGroup = 6;
scrUnitCreate();

//Unique things for Mages
//-----------------------------------------------------------------------------------------
scrMGTAnimations();
aT = 5;     //aT = attack Trigger, creates the magic when reachin this frame
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)
toNextFrame = animSp;

//states
defending = 0;
waiting = 1;
attacking = 2;
goToWait = 3;

state = defending;

//other
fiend = noone;
global.fiendThere = false;
//-----------------------------------------------------------------------------------------
