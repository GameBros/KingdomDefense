sound_play(soArrowShot);
scrALShoot();
state = waiting;
loadingShot = true;

curFrame = 0;

if( wantsToMove )
scrUnitStartMoving();
