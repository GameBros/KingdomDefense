//- Executes the right state script

switch(state)
{
    case attacking  :   scrTHAttacking();break;
    case defending  :   scrTHDefend();break;
    case waiting    :   scrTHWaiting();break;
    case moving     :   scrUnitMoving();break;
}
