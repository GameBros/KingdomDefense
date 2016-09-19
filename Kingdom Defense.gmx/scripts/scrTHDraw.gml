//Unique things for Soldiers:

//State manager
if ( !win )
{
    if ( global.level_state != 1 )
    {
        scrTHStateExecute();
    }
    else
    {
        speed = 0;
        animSp = 0;
    }
}
else
{
    curAnim = animWin;
    state = following;
}

//General
scrUnitDraw();
