//- Every Mage calls this when state is defending
if( wantsToMove )
    scrUnitStartMoving();
else
{
    if ( scrUnitFiendThere(oEnemy) )
    {
        fiend = global.enm;
        state = goToWait;
        curAnim = animGoToWait;
        curFrameIsLast = false;
        curFrame = 0;
    }
}
