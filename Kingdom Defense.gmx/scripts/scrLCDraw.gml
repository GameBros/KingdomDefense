//- Draw script for unit Lancer

//Unique things for Lancers:

//State manager
if ( global.level_state != 1 )
scrLCStateExecute();
else
{
    speed = 0;
    animSp = 0;
}

//-----------------------------------------------------------------------------------------

//Main things (everything that every unit class has same, such as animation for Example)
scrUnitDraw(false);        //false = don�t show debugging messages, true = show�em
