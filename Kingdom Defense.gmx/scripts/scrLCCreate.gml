myGroup = 2;
scrUnitCreate();

//Unique things for Lancers
//-----------------------------------------------------------------------------------------
weaponX = 21; 
weaponY = 2;
scrLCAnimations();
aT = 9;     //aT = attack Trigger, creates the collision shape when reaching this trigger
aTShort = 4;
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)

//range
myRnShort = abs(weaponX + 0.6*( sprite_get_bbox_right(myWSpr)-sprite_get_bbox_left(myWSpr) ) );

//other
toNextFrame = animSp;
attackKind = 0;
straight = false;
myWSpr2 = sSp1_fly;

scrALCreate();
//-----------------------------------------------------------------------------------------
