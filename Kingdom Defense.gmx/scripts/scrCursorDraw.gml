x_prev = xSave;
y_prev = ySave;

x = mouse_x;

if( global.level_state == 0 )
{
    if( mouse_y < view_yview[0] )
    y = view_yview[0];
    else
    y = mouse_y;
    
    if( mouse_y > view_yview[0]+480 )
    y = view_yview[0]+480;
    
    //Rectangular choice
    if( mouse_check_button_pressed(mb_right) )
    {
        recx = x;    
        recy = y;
    }
    
    if( mouse_check_button_released(mb_left) && !global.canChooseUnit )
    {  
        global.canChooseUnit = true;
    }
    
    if( mouse_check_button_pressed(mb_left) )
    {   
        if( global.canChooseUnit )
        {
            global.chosenUnitsSave = global.chosenUnits;
            
            if( global.chosenUnits == 0 )
            {
                //no unit is selected
                clickedUnit = collision_point(mouse_x,mouse_y,oUnitHuman,true,true);
                if( instance_exists(clickedUnit) )
                {
                    clickedUnit.chosen = true;
                    global.chosenUnit = clickedUnit;
                    global.chosenUnits = 1;
                }
            }
            else
            {
                //one or more units are selected
                clickedSlot = collision_point(mouse_x,mouse_y,oSlot,true,true);
                if( instance_exists(clickedSlot) )
                {
                    if( clickedSlot.state == 1 )
                    {
                        global.mvSlot = clickedSlot;
                        
                        if( global.chosenUnits > 1 )
                        {
                            //clear all reserved slots of the moving units
                            with( oUnitAct )
                            {
                                if( state == -1 && chosen )
                                {
                                    if( instance_exists(myMvSlot) ) 
                                    {
                                        //myMvSlotSave = 
                                        //myMvSlot.myObject = noone;
                                        
                                    }
                                }
                            }
                            
                            //clicked on an active slot , and more than one unit is selected
                            chsSlotDir = 0;
                            notLastUnit = true;
                            oneDirNotFound = false;
                            
                            while( notLastUnit )
                            {                    
                                checkIndex = clickedSlot.index;
                                checkSlot = ds_list_find_value(global.slots,checkIndex);
                                gotoIndex = -1;
                                while( checkIndex >= 0 && checkIndex <= ds_list_size(global.slots)-1 && gotoIndex == -1)
                                {
                                    checkSlot = ds_list_find_value(global.slots,checkIndex);
                                    
                                    if( !instance_exists( checkSlot.myObject ) && checkSlot.state == 1 )
                                    gotoIndex = checkIndex;
                                    
                                    checkIndex += -1+2*chsSlotDir;
                                }
                                
                                unitIndex = -1;
                                while( checkIndex <= ds_list_size(global.slots)-1 && checkIndex >= 0 && unitIndex == -1 )
                                {
                                    checkSlot = ds_list_find_value(global.slots,checkIndex);
                                    if( instance_exists(checkSlot.myObject) )
                                    {
                                        if( checkSlot.myObject.chosen )
                                        {
                                            unitIndex = checkIndex;    
                                        }
                                    }
                                    checkIndex += -1+2*chsSlotDir;
                                }
                               
                                unitGo = noone;
                                if( ((chsSlotDir == 0 && unitIndex < gotoIndex) || (chsSlotDir == 1 && unitIndex > gotoIndex)) && unitIndex != -1 && gotoIndex != -1)
                                {
                                    unitGo = ds_list_find_value(global.slots,unitIndex).myObject;
                                    global.slotGoTo = ds_list_find_value(global.slots,gotoIndex);   
                                    oneDirNotFound = false;
                                }
                                else
                                {
                                    if( oneDirNotFound )
                                    notLastUnit = false;
                                    else
                                    oneDirNotFound = true;
                                }
                                
                                if( instance_exists(unitGo) )
                                {
                                    with( unitGo )
                                    {
                                        if( instance_exists(myMvSlot) ) myMvSlot.myObject = noone;
                                        wantsToMove = true;
                                        mySlot.myObject = noone;
                                        myMvSlot = global.slotGoTo;
                                        myMvSlot.myObject = id; 
                                    }
                                }
                                
                                if( chsSlotDir == 0 )
                                    chsSlotDir = 1;
                                else
                                    chsSlotDir = 0;
                            }
                        }
                        else
                        {
                            //only one unit is selected
                            swap = false;
                            if( instance_exists(clickedSlot.myObject) )
                                swap = (clickedSlot.myObject.state != -1) && (global.chosenUnit.state != -1);
                                
                            if( swap )
                            {
                                //There is already a unit on the slot the player clicked to move on
                                if( clickedSlot.myObject != global.chosenUnit )
                                {
                                    //The unit on this slot and the chosen unit want to swap places                        
                                    with(clickedSlot.myObject)
                                    {
                                        if( instance_exists(myMvSlot) ) 
                                        myMvSlot.myObject = noone;
                                        
                                        wantsToMove = true;
                                        myMvSlot = global.chosenUnit.mySlot;
                                        myMvSlot.myObject = id;
                                    }
                                    
                                    with(global.chosenUnit)
                                    {
                                        if( instance_exists(myMvSlot) ) 
                                        myMvSlot.myObject = noone;
                                        
                                        wantsToMove = true;
                                        myMvSlot = global.mvSlot;
                                        myMvSlot.myObject = id;
                                    }
                               }
                            }
                            else
                            {
                                //On the clicked slot, no unit exists
                                moveUnit = false;
                                if( instance_exists(clickedSlot.myObject) )
                                {
                                    //There is already a unit walking to the clickedSlot
                                    checkIndex = clickedSlot.index;
                                    checkDir = (clickedSlot.x < global.chosenUnit.x);       //0 = left, 1 = right
                                    foundSlot = noone;
                                    
                                    while( checkIndex != global.chosenUnit.mySlot.index && checkIndex > -1 && checkIndex < ds_list_size(global.slots) ) 
                                    {
                                        checkSlot = ds_list_find_value(global.slots,checkIndex);
                                        checkIndex += -1 + 2*checkDir;
                                        
                                        if( instance_exists(checkSlot) )
                                        {
                                            if( !instance_exists(checkSlot.myObject) && checkSlot.state == 1 )
                                            {
                                                foundSlot = checkSlot;
                                                checkIndex = -1;
                                            }
                                        }
                                    }
                                    
                                    if( instance_exists(foundSlot) )
                                    {
                                        global.mvSlot = foundSlot;
                                        moveUnit = true;
                                    }
                                }
                                else
                                    moveUnit = true;                                            
                                    
                                if( moveUnit )
                                {
                                    with(global.chosenUnit)
                                    {
                                        if( instance_exists(myMvSlot) ) myMvSlot.myObject = noone;
                                        wantsToMove = true;
                                        myMvSlot = global.mvSlot;
                                        mySlot.myObject = noone;
                                        myMvSlot.myObject = id;
                                    }    
                                }
                            }
                        } 
                    }
                }  
                
                global.chosenUnits = 0;
                global.chosenUnit = noone;
                with oSlot
                {
                    state = 0;
                }
            }
    
            if( global.chosenUnits == 1 )
            {
                scrCursorChoseUnit();    
                with global.chosenUnit{
                    scrUnitChosen();
                }
            }
            else
            {
                with oUnitHuman
                {
                    chosen = false;
                }
            }
        }
    }
    
    if( mouse_check_button(mb_right) )
    {
        draw_rectangle_colour(recx,recy,x,y,c_red,c_red,c_red,c_red,true);
    }    
    
    if( mouse_check_button_released(mb_right) )
    {
        //mark units in rectangle
        with oSlot
        {
            state = 0;
        }
        
        with oUnitDelete
        {
            instance_destroy();
        }
        
        global.chsRectX1 = recx;
        global.chsRectY1 = recy;
        global.chsRectX2 = mouse_x;
        global.chsRectY2 = mouse_y;
        global.chosenUnits = 0;

        with oUnitHuman
        {
            chosen = false;
            if( rectangle_in_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,global.chsRectX1,global.chsRectY1,global.chsRectX2,global.chsRectY2) )
            {
                global.chosenUnits += 1;
                global.chosenUnit = id;
                chosen = true;
            }
        }
        
        if( global.chosenUnits > 0 )
        {
            with oUnitHuman{
                scrUnitChosen();
            }
            scrCursorChoseUnit();    
        }
    }
}
else
y = mouse_y;

xSave = x;
ySave = y;

if ( xSave < view_xview[0] )
xSave = view_xview[0];

if ( xSave > view_xview[0]+800 )
xSave = view_xview[0]+800;

if ( ySave < view_yview[0] )
ySave = view_yview[0];

if ( ySave > view_yview[0]+480 )
ySave = view_yview[0]+480;

//draw_sprite(sprite_index,-1,xSave+x_st,ySave+y_st);
draw_sprite(sprite_index,-1,xSave,ySave);
