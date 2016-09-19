//- Every Mage calls this when state is attacking

//Check whether attacking animation has ended
if (curFrameIsLast) 
{
    curFrame = 0;
    curFrameIsLast = false;
    waitUntilAtk = myAtkSp;

    if ( scrUnitFiendThere(oEnemy) )
    {
        //Another attack starts
        curAnim = animGoToWait;
        state = goToWait;
    }    
    else
    {
        if( wantsToMove )
            scrUnitStartMoving();
        else
        {
            //Defending
            state = defending;
            curAnim = animStanding;
        }
    }
}

//If frame reached where starts the collider of attack, create a collider and after a while, destroy it
if (curFrame == aT && toNextFrame==animSp) 
{       
    if ( instance_exists(fiend) )
    {
        scrActorDamage(fiend,self,0,0,1,true, c_blue);
        fiend.ice_stayTime = icedStayTime;
    }
}
