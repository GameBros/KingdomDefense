scrEnemyCheckTargets();

if ( instance_exists(atkUnit) )
{
    waitUntilAtk -= 1;
    if (waitUntilAtk == 0) 
    {
        curFrame = 0; 
        rangeX1 = x-myRn;
        rangeX2 = x-xToMid;

        state = attacking;
        curAnim = animAttacking;                     
    }
}
else
{
    state = walkingLeft;
    curAnim = animWalking;
    speed = mySp;
    curFrame = 0;        
}
