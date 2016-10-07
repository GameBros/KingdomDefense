//Which state
if ( global.level_state != 1)
{
    //HpBar staying
    scrHealthStay();
    
    switch(state)
    {
        case walkingLeft:
        scrEnemyWalking();
        break;
        
        case attacking:
        scrEnemyAttacking();  
        break;
        
        case waiting:
        scrEnemyWait();
        break;
    }
    
    //Manage Animation
    if (state != waiting and state != skilling)
    {
        toNextFrame -= 1; //time delay until next frame shall be drawn
    
        if (toNextFrame == 0)
        {
            toNextFrame = animSp;
            curFrame += 1;
        
            numbOfFrames = sprite_get_number(curAnim);
        
            if (curFrame+1 > numbOfFrames )
            {
                curFrame = 0;
            }
        }
    }
}
else
{
    speed = 0;
}

//manage status effects
scrEnemyStatusEffects();

//draw myself
draw_sprite_ext(curAnim,curFrame,x,y,1,1,0,drawColor,1);

//Fade effects
if (myAlpha > 0) 
{
    scrFadeColor(curAnim,dmgColor,myAlpha,curFrame,0,0,0);
    myAlpha -= 0.1;
    
    if (myAlpha<0)
    myAlpha = 0;
}

if( drawColor != c_white )
scrFadeColor(curAnim,drawColor,0.3,curFrame,0,0,0);    

//White fade in when created
if (createFade_alpha > 0)
{
    scrFadeColor(curAnim,c_black,myAlpha,curFrame,0,0,0);
    createFade_alpha -= createFade_amount;
    
    if (createFade_alpha<0)
    createFade_alpha = 0;
}

//Dieing
if (myHpAct <= 0) 
{
    global.em = id;
    
    with oUnitHuman
    {
        scrUnitKilledEnmy(global.em);
    }
    
    sound_play(soEnemyDie);

    if ( isAir )
    {
        death = instance_create(x,y,oDieingAir);
        death.sprite2 = animDieing2;
    }
    else
        death = instance_create(x,y,oDieing);        
    
    death.sprite_index = animDieing;
    death.image_xscale = image_xscale;
    
    //Maybe drop gold
    r = random(100);
    
    if(r <= goldDropChance)
    {
        //Drop gold
        g = instance_create(x,y,oGoldDroplet);
        g.worth = goldGive;
    }
    
    if( global.lastWave && instance_number(oEnemy) == 1)
    {
        global.level_state = 1;
        room_goto(rWorldMap1);
    }
    
    instance_destroy();
}

//Shade
if ( isAir )
scrDrawShade();
