//- Executes the right state script
switch(state)
{
    case attacking  :     scrLCAttacking();break;
    case waiting    :     scrLCWaiting();break;
    case defending  :     scrLCDefend();break;
    case moving     :     scrUnitMoving();break;
}
