//- This is called always when the hp of an Actor is changed by an other Actor
target = argument0;                 //Object whose hp is changed
attacker = argument1;               //Object who activates the hp changing

effectType = argument2;             //Effect type : 0 = standard physical, 1 = heal
dmgKind = argument3;                //Kind of hp changement : 0 = damage, 1 = heal
dmgType = argument4;                //0 = normal damage, 1 = magic damage
attackerIsEn = argument5;           // true when the attack comes from an enemy, false when from unit
dmgCol = argument6;

if( instance_exists(target) )
{
    target.hpBarStays = true;                  //whether hp bar is visible
    target.hpBarStayTime = target.hpBarStayTimeMax;
    n = instance_create( target.x,target.bbox_top-32,oDamageNumber )
    
    if( target.object_index == oEnemyCastle || target.object_index == oUnitCastle )
    {
        def = 0;
        atk = attacker.myObjectAtk;
    }
    else
    {
        if ( dmgType == 1 )
        {
            atk = attacker.myMgcAtk;
            def = target.myMgcDef;
        }
        else
        {
            atk = attacker.myAtk;
            def = target.myDef;    
        }
    }
    
    if (dmgKind == 0)
    {
        n.col = c_white;    
        damage = -(atk-def);
            
        if (damage > 0)
        damage = 0;
        
        //Critical?
        if( target.object_index != oEnemyCastle && target.object_index != oUnitCastle )
        {
            r = random(1000);
            
            if ( r < attacker.myLuck )
            {
                sound_play(soDamageCrit);
                n.crit = true;
                damage *= 3;
            }
        }
    }
    else
    {
        n.col = c_lime;
        damage = atk;
    }
    
    n.dmg = damage;
    target.myHpAct += damage;
    if (target.myHpAct > target.myHpMax)
    {
        target.myHpAct = target.myHpMax;
    }
    
    if (target.myHpAct < 0)
    {
        target.myHpAct = 0;
    }
    
    // Visual effect
    //------------------------------------------------------------------------------
        
    ef_obj = noone;
    ef_spr = -1;
    ef_x = 0;
    ef_y = 0;
    
    switch(effectType)
    {
        case 0: ef_obj = oEffectStandart;
                ef_spr = sHit; 
                ef_x = target.x;
                ef_y = target.y-target.yToMid;
        break;
    }
    
    if !(ef_obj == noone)
    {
        ef = instance_create(ef_x,ef_y,ef_obj);
        if (ef_spr != -1)
        ef.sprite_index = ef_spr;
    }
    
    target.dmgColor = dmgCol;
    target.myAlpha = 1;
}
//------------------------------------------------------------------------------
