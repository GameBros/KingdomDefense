//Called every step when unit is moving towards a slot
x += myMovingSp;
if( x <= myMvSlot.x )
{
    x = myMvSlot.x;
    state = 0;
}
