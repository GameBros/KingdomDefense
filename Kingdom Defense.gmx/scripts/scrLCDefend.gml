//- Every Lancer calls this when state is defending
if( wantsToMove )
scrUnitStartMoving();
else
{
    scrLCEnChoose();
    scrLCActWithFiend();
}
