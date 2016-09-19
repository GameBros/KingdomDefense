//- Executes the right state script
switch(state)
{
    case attacking  :     scrASAttacking();break;
    case waiting    :     scrASWaiting();break;
    case defending  :     scrASDefend();break;
    case moving     :     scrUnitMoving();break;
}
