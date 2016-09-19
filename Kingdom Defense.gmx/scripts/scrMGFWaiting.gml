//- Every Mage calls this when state is waiting
if( wantsToMove )
    scrUnitStartMoving();
else
    {
    scrUnitFiendThere(oEnemy);
    
    if( global.fiendInView )
    {
        if( state == goToWait )
        {
            if( curFrameIsLast && toNextFrame==animSp )
            {
                curFrameIsLast = false;
                state = waiting;
                curAnim = animWaiting;
                curFrame = 0;
            }
        }
        else
        {   
            waitUntilAtk-=1;
    
            if (waitUntilAtk <= 0 && global.fiendThere)
            {
                state = attacking;
                curFrame = 0;
                curFrameIsLast = false;
                curAnim = animAttacking;
            }
        }
    }
    else
    {
        curAnim = animStanding;
        state = defending;
    }
}
