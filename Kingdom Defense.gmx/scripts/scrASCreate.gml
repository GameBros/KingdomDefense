myGroup = 1;
scrUnitCreate();

//Unique things for Archers
//-----------------------------------------------------------------------------------------
scrASAnimations();
eT1 = 4;  //eT= effectTrigger, shows the effect after the 4th frame of the animation is drawn
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)

//other
dir = 0;
dire = 0;
toNextFrame = animSp;
straight = false;       //When true ( when small range or air enemys ) unit shoots straight
loadingShot = false;
lockDirUp = 50;
lockDirDown = 320;
lockDirUpL = 130;
lockDirDownL = 240;

scrALCreate();
//-----------------------------------------------------------------------------------------
