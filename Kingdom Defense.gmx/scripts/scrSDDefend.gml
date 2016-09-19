//- Every Soldier calls this when state is defending
if( wantsToMove )
scrUnitStartMoving();
else
{
    curAnim = animStanding;
    scrUnitFiendThere(oEnemyMelee);
    
    if ( global.fiendInView )
    {
        curAnim = animAttacking;
        curFrame = 0;
    }
    
    if ( instance_exists(global.enm) )
    {
        state = waiting;
        waitUntilAtk = myAtkSp;
        fiend = global.enm;
    }
}
