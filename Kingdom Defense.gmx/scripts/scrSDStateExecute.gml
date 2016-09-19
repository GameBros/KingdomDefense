//- Executes the right state script

switch(state)
{
    case attacking  :   scrSDAttacking();break;
    case defending  :   scrSDDefend();break;
    case waiting    :   scrSDWaiting();break;
    case moving     :   scrUnitMoving();break;
}
