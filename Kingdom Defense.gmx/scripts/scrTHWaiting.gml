//- Every Thief calls this when state is waiting

if( wantsToMove )
scrUnitStartMoving();
else
{
    if( !scrUnitFiendThere(oEnemyMelee) )
    {
        state = defending;
        curAnim = animStanding;
    }
    
    waitUntilAtk-=1;
    
    if (waitUntilAtk <= 0)
    {
        state = attacking;
    }
}
