//Called every step when unit is moving towards a slot
wantsToMove = false;

stop = false;
if( instance_exists(myMvSlot) )
{
    if( x < myMvSlot.x )
    {
        image_xscale = 1;
        x += mySp;
        
        if( x >= myMvSlot.x )
            stop = true;
    }
    
    if( x > myMvSlot.x )
    {
        image_xscale = -1;
        x -= mySp;
        
        if( x <= myMvSlot.x )
            stop = true;
    }
    
    if( stop )
    {
        x = myMvSlot.x;
        image_xscale = 1;
        curAnim = animStanding;
        state = 0;
        mySlot = myMvSlot;
        myMvSlot = noone;
        mySlot.myObject = id;
        scrUnitUnlockSlots();
    }
}



