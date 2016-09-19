//- Executes the right state script

switch(state)
{
    case attacking  :       scrMGIAttacking();break;
    case waiting    :       scrMGWaiting();break;
    case goToWait   :       scrMGWaiting();break;
    case defending  :       scrMGDefend();break;
    case moving     :       scrUnitMoving();break;
}
