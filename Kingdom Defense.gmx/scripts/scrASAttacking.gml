sound_play(soArrowShot);
scrALShoot();
state = waiting;
loadingShot = true;

curFrame = 1;

if( wantsToMove )
scrUnitStartMoving();
