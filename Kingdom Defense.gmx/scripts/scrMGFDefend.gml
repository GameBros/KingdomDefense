//- Every Mage calls this when state is defending
if( wantsToMove )
    scrUnitStartMoving();
else
{
    curAnim = animStanding;
    scrUnitFiendThere(oEnemy);
    
    if ( global.fiendInView )
    {
        state = goToWait;
        curAnim = animGoToWait;
        curFrameIsLast = false;
        curFrame = 0;
    }
}
