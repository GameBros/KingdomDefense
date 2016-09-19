if (round(image_index) == 16 && !pause)
{
    //dig one thing up
    if ( pauseCounter > -1 )
    pauseCounter += 1;
    
    sound_play(soDig);
    global.found = false;
    global.checkX = x;
    
    with oDigPlace
    {
        if ( x == global.checkX )
        global.found = true;
    }
    
    if ( !global.found )
    instance_create(x, global.groundEndY, oDigPlace);
    
    treasure_there = false;
    
    if (treasureCounter < treasureRate)
    {
        treasureCounter += 1;
    }
    else
    {
        treasure_there = true;
        treasureCounter = 0;
    }
    
    if (treasure_there == false)
    {
        //Create dirt
        
        repeat(3)
        {
            scrDGCreateDirt();
        }
    }
    else
    {    
        pauseCounter = 0;
        sound_play(soCashDigUp);  
        scrDGCreateDirt();
        
        //Create a treasure
        treasureWorth = 0       //minimum (bronze)
        
        repeat(2)
        {
            r = random(100);
            
            if (r <= myLuck)
            {
                treasureWorth += 1;
            }
        }
        
        tr = instance_create(x+10,440,oTreasure);
        tr.index = treasureWorth;
        
        switch(treasureWorth)
        {
            case 0:     tr.sprite_index = sBronze;
            break; 
            case 1:     tr.sprite_index = sSilver;  
            break; 
            case 2:     tr.sprite_index = sGold; 
            break;    
        }
    }
    
    if ( pauseCounter == pauseRate )
    {
        pauseCounter = 0;
        finish = true;
    }
}
