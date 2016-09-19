//Check whether attacking animation has ended
if (curFrameIsLast && toNextFrame == 1) 
{
    if( wantsToMove )
    scrUnitStartMoving();
    else
    {
        curFrame = 0;
        state = waiting;
        waitUntilAtk = myAtkSp;
    }
}

if ( attackKind == 0 )
{
    if (instance_exists(fiend))
    {   
        if (curFrame == aT && toNextFrame == animSp)
        {
            scrALShoot();
        }
    }
    else
    {
        curFrame = 0;
        state = defending;
        curAnim = animStanding;
    }
}
else
{
    //Check whether attacking animation has ended
    if (curFrameIsLast) 
    {
        curFrame = 0;
        curFrameIsLast = false;
    
        if ( collision_rectangle(x,bbox_top,x+myRnShort,bbox_bottom,oEnemyMelee,1,1))
        {
            state = waiting;
            waitUntilAtk = myAtkSp;
        }    
        else
        {
            state = defending;
            curAnim = animStanding;
        }
    }

    //If frame reached where starts the collider of attack, create a collider and after a while, destroy it
    if (curFrame == aTShort && toNextFrame==animSp) 
    {       
        sound_play( soDamageSword );
        scrActorAttack( oEnemy, true, myWSpr, true, c_red);
    }
}
