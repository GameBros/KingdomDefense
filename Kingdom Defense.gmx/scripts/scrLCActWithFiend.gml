if (instance_exists(fiend))
{      
    curFrame = 0; 
    face = fiend.x > x;
    if( state != waiting )
    {
        state = waiting;
        waitUntilAtk = myAtkSp;
    }
    dist = fiend.x-x-((fiend.bbox_right-fiend.bbox_left)/2);
    
    if ( dist < myRnShort )
    {
        attackKind = 1;
        curAnim = animAttacking2;
    }
    else
    {
        attackKind = 0;
        curAnim = animAttacking;
        a_x1 = wp_x;
        a_y1 = wp_y;
    
        xDif = fiend.x-wp_x;
    
        a_x2 = wp_x+(xDif/2);
    
        RXDif = xDif;
    
        yAbsReal = (RXDif*RXDif)/1200;

        if (yAbsReal > 80)
        yAbsReal = 80;
    
        if (wp_y >= fiend.y)
        a_y2 = fiend.y-yAbsReal;
        else
        a_y2 = y-yAbsReal;  
        
        a_x3 = fiend.x;
        a_y3 = fiend.y;
    
        fac = abs(scrProjektileGetAccl(a_x1,a_y1,a_x2,a_y2,a_x3,a_y3,wp_x));
        projektileSp = 15-(fac);
        dir = point_direction(wp_x,wp_y,wp_x+projektileSp,scrProjektileGetY(a_x1,a_y1,a_x2,a_y2,a_x3,a_y3,wp_x+projektileSp));    
    }
}

dir2 = dir-90;
if (dir2 < 0)
dir2 += 360;
            
wp_x = x+lengthdir_x(14,dir);
wp_y = y+lengthdir_y(14,dir);
            
wp_x -= lengthdir_x(5,dir2);
wp_y -= lengthdir_y(5,dir2);
