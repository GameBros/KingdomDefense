if(state == moving) 
scrUnitMoving();
else
{
    global.uL = ds_list_create();       //units who are in my row and who must be healed!
    global.iD = id;
        
    with(oUnitAct)
    {   
        if (myHpAct < myHpMax && id != global.iD )
        ds_list_add(global.uL,id);
    }
    
    mustHeal = ds_list_size(global.uL) > 0;
    
    if (state == healing)
    {
        if (curFrame == aT && toNextFrame == animSp) 
        {
            //heal
            healBallReached = false;
        
            //prepare
            cornerY = y-sprite_get_yoffset(sprite_index);
            wpn_spr = ds_list_find_value(ds_list_find_value(curAnim,curFrame),1);
            cornerX = x-sprite_get_xoffset(sprite_index);
            r = scrGetWeaponRot();
            X = cornerX + ds_list_find_value(frame,3) + lengthdir_x(sprite_get_width(wpn_spr),r);
            Y = cornerY + ds_list_find_value(frame,4);
        
            //effect
            f = instance_create(X,Y,oEffectStandart);
            f.sprite_index = sGlitter2;
        
            //heal ball creation
            bl = instance_create(X-(image_xscale*2),Y,oHealBall);        
            bl.target = mustHealUnit;
            bl.creator = id;
            bl.myMgcAtk = myMgcAtk;
            bl.centralY = bl.y;
        }
    
        if (curFrameIsLast)
        {
            //animation ended
            curFrame = 0;
            curFrameIsLast = false;
            state = waitAfterHeal; 
            curAnim = animAttackEnd;
        }
    }
    
    if (state == waiting)
    {   
        waitUntilAtk -= 1;
    
        if (waitUntilAtk == 0)
        {    
            if ( mustHeal)
            {
                state = healing;
                curAnim = animHealing;
            }
            else
            {
                state = act;
                curAnim = animStanding;
            }
        
            curFrame = 0;
        }
    }
    
    if (state == waitAfterHeal)
    {
        if (healBallReached)
        {
            curAnim = animBackToWait;
            curFrame = 0;
            state = backToWait;
            healBallReached = false;
        }
    }
    
    if (state == backToWait)
    {
        if (curFrameIsLast)
        {
            //animation ended
            curFrame = 0;
            curFrameIsLast = false;
            state = act;
            curAnim = animStanding;
            waitUntilAtk = myAtkSp;
            
            if( wantsToMove )
            scrUnitStartMoving();
        }        
    }
    
    if ( state == act )
    {
        if( wantsToMove )
            scrUnitStartMoving();
        else
        {
            if (mustHeal)
            {     
                //SOME UNIT MUST BE HEALED
        
                listOfUnitsHp = ds_list_create();
        
                for( i = 0; i < ds_list_size(global.uL); i += 1)
                {
                    //Saving the unit�s hp into a list
                    uni = ds_list_find_value(global.uL,i);
                    ds_list_add(listOfUnitsHp,uni.myHpAct);
                }
        
                listOfUnitsHpOrdered = ds_list_create();
                ds_list_copy(listOfUnitsHpOrdered,listOfUnitsHp);
                ds_list_sort(listOfUnitsHpOrdered,true);
        
                mustHealUnit = ds_list_find_value(global.uL,ds_list_find_index(listOfUnitsHp,ds_list_find_value(listOfUnitsHpOrdered,0)));
        
                testX = mustHealUnit.x+mustHealUnit.xToMid;
                
                if (testX-x <= distMaxHeal)
                {
                    curFrame = 0;
                    curFrameIsLast = false;
                    state = waiting;
                    waitKind = 0;
                    waitUntilAtk = myAtkSp;
                    curAnim = animWaiting;
                }
            }
            else
            {
                //NO UNIT MUST BE HEALED
                if ( curAnim == animBackToWait )
                {
                    curAnim = animWaiting;
                    state = waiting;
                    waitKind = 1;
                }
            }
        }
    }
}
