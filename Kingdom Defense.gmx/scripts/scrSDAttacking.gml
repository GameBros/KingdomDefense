//- Every Soldier calls this when state is attacking

//Check whether attacking animation has ended
if (curFrameIsLast) 
{
    curFrame = 0;
    curFrameIsLast = false;
    
    if( wantsToMove )
    {
        scrUnitStartMoving();
    }
    else
    {
        if ( instance_exists(fiend) )
        {
            state = waiting;
            curAnim = animAttacking;
            waitUntilAtk = myAtkSp;
        }    
        else
        {
            state = defending;
            curAnim = animStanding;
        }
    }
}

//If frame reached where starts the collider of attack, create a collider and after a while, destroy it
if (curFrame == aT && toNextFrame==animSp && instance_exists(fiend)) 
{       
    sound_play( soDamageSword );
    scrActorAttack( fiend, true, myWSpr, true, c_red);
}

//Check whether reached frame where the weapon effect appears
if (curFrame == eT1 && toNextFrame == animSp-1)  
{   
    //=effect trigger 1
    attackEffect=instance_create(x+(weaponX*image_xscale),y+weaponY,oEffectStandart); //Hx = x Pos of the hand while hitting the enemy
    
    attackEffect.sprite_index=eS1;
    attackEffect.image_xscale=image_xscale;
}
