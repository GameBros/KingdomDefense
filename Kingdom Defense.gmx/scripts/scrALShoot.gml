aX = x+lengthdir_x(14,dir+15);
aY = y+lengthdir_y(14,dir+15);

if (instance_exists(fiend))
{
    if ( straight )
    {
        xSub = ((a_x3-a_x1)/projektileSp-2)*(-fiend.speed);
        shot = instance_create(aX,aY,oProjektile_2);
        shot.direction = point_direction(aX,aY,fiend.x-xSub,fiend.y-fiend.yToMid);
        shot.speed = projektileSp*1.8;
    }
    else
    {
        xSub = ((a_x3-a_x1)/projektileSp-2)*(-fiend.speed);
    
        shot = instance_create(aX,aY,oProjektile_1);
        shot.x1 = a_x1; 
        shot.y1 = a_y1;
        shot.x2 = a_x2;
        shot.y2 = a_y2;
        shot.x3 = a_x3-xSub;
        shot.y3 = a_y3-8;

        shot.xAdd = projektileSp;    
    }

    if (myGroup == 1)
    {
        shot.sprite_index = myArSpr;
    }
    else
    {
        shot.sprite_index = myWSpr2;
    }

    shot.myLuck = myLuck;
    shot.myAtk = myAtk;
    shot.myUnitIndex = (myGroup == 3);
}

atkImg = 0;
waitUntilAtk = myAtkSp;
