myGroup = 0;
scrUnitCreate();

//Unique things for Soldiers
//-----------------------------------------------------------------------------------------
scrSDAnimations();
eT1 = 5;  //eT = effectTrigger, shows the effect after the 4th frame of the animation is drawn
aT = 6;     //aT = attack Trigger, creates the collision shape when reaching this trigger
curAnim = animStanding;      //current animation
animSp = 2; //speed of the animation (the more the slower)
weaponX = 18; 
weaponY = 2;

//states
defending = 0;
waiting = 1;
attacking = 2;

state = defending;

//sprites
eS1=sEfAttack;  //eS= effectSprite

//other
toNextFrame = animSp;
fiend = noone;
myRn = (ds_list_find_value(ds_list_find_value(animAttacking,aT),3) - 32) + (0.5*(sprite_get_bbox_right(myWSpr)-sprite_get_bbox_left(myWSpr)));
myBashRate = 20;

//-----------------------------------------------------------------------------------------
