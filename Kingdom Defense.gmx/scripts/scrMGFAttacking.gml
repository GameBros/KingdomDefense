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
    global.me = id;
    global.make = false;
    
    if( scrUnitFiendThere(oEnemy) )
    {
        myFire = instance_create(global.enm.x,y,oMGF_Fire);
        myFire.creator = id;
        myCollider = instance_create(global.enm.x,y,oCol); 
        myCollider.sprite_index = sMGAttack_Fire;
        myCollider.myLuck = myLuck;
        myCollider.myMgcAtk = myMgcAtk;      
        myFire.myCollider = myCollider;  
        myFire.atk_frame_start = atk_frame_start;
        myFire.atk_frame_end = atk_frame_end;
    }
}
