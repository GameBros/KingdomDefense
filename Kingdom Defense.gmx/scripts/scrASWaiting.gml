if( wantsToMove )
scrUnitStartMoving();
else
{
    global.allFiendsInRange = ds_list_create();  
    global.me = id;
    
    with(oEnemy)
    {
        dist = abs(x-global.me.x);
        if (dist < global.me.myRn && dist >= 0)
        {
            dire = point_direction(global.me.x,global.me.y,x,y);
            if( scrASDirOk(global.me,id) )
            ds_list_add(global.allFiendsInRange,id);
        }
    }
    
    scrALEnChoose();
    
    if ( ds_list_size(global.allFiendsInRange) == 0)
    {
        state = defending;
        curFrame = 0;
        curAnim = animStanding;
    }
    
    if (instance_exists(fiend))
    {       
        if (abs(fiend.x-x) < 75 || fiend.isAir)
        {
            straight = true;
            dir = point_direction(x,y,fiend.x,fiend.y-fiend.yToMid);
            projektileSp = 13;
        }
        else
        {
            straight = false;
            a_x1 = wp_x;
            a_y1 = wp_y;
        
            xDif = fiend.x-wp_x;
        
            a_x2 = wp_x+(xDif/2);
        
            RXDif = xDif;
        
            yAbsReal = (RXDif*RXDif)/1200;
    
            if (yAbsReal > 125)
            yAbsReal = 125;
        
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
    
    if(!loadingShot)
    waitUntilAtk -= 1;
    else
    {
        if ( curFrameIsLast )
        {
            curFrameIsLast = false;
            loadingShot = false;
        }
    }
    
    if (waitUntilAtk <= 0 && scrASDirOk(id,fiend) )
    {
        curFrame = 0;
        state = attacking;
    } 
}
