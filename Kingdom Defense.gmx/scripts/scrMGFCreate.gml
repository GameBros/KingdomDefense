myGroup = 4;
scrUnitCreate();

//Unique things for Mages
//-----------------------------------------------------------------------------------------
scrMGFAnimations();
aT = 5;     //aT = attack Trigger, creates the magic when reachin this frame
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)
toNextFrame = animSp;
atk_frame_start = 6; 
atk_frame_end = 17;

//states
defending = 0;
waiting = 1;
attacking = 2;
goToWait = 3;

state = defending;

//other
myCollider = noone;
myFire = noone;
fiend = noone;
global.fiendThere = false;
//-----------------------------------------------------------------------------------------
