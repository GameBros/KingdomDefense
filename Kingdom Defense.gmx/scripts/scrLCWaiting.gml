if( wantsToMove )
scrUnitStartMoving();
else
{
    scrLCEnChoose();
    
    if ( ds_list_size(global.allFiendsInRange) == 0)
    {
        curAnim = animStanding;
        state = defending;
    }
    else
    scrLCActWithFiend();
    
    waitUntilAtk -= 1;
    
    if (waitUntilAtk <= myAtkSp-10) atkImg=1;
    if (waitUntilAtk <= myAtkSp-15) atkImg=2;
    
    if (waitUntilAtk <= 0)
    {
        curFrame = 0;
        state = attacking;
    } 
}
