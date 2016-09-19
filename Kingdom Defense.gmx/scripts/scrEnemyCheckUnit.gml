//Returns true when the given unit can be attacked by the enemy calling this script

unit = argument0;

enType = 0;     //melee

if ( object_get_parent(id) == oEnemyFlying )
enType = 1;

possible = false;
switch( enType )
{
    case 0:     possible = (unit.enLimit_melee < unit.myEnAmount);
    break;
    case 1:     possible = (unit.enLimit_air < unit.myEnAmount);
    break;
}

return possible;
