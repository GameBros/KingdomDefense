targets = argument0;
unitAttack = argument1;         //True when the attack comes from an unit, false if it�s from an enemy
collider = argument2;           //Collider shape (sprite)
physOrNot = argument3;          //Whether it is a physical damage or not (magic then)
dmgCol = argument4;

if ( unitAttack )
{
    frame = ds_list_find_value(curAnim,curFrame)

    cornerX = x-sprite_get_xoffset(sprite_index);
    cornerY = y-sprite_get_yoffset(sprite_index);

    X = cornerX + ds_list_find_value(frame,3);

    global.myCollider = instance_create(x+weaponX,y+weaponY,oCol);
    global.myCollider.sprite_index = collider;
    global.myCollider.image_angle = scrGetWeaponRot();
    global.myCollider.myElement = myElement;
}

global.myCollider.image_xscale = 1; 
global.myCollider.myAtk = myAtk;
global.myCollider.myLuck = myLuck;
global.unitAttack = unitAttack;
global.myCollider.myMgcAtk = myMgcAtk;
global.physOrNot = physOrNot;
global.dmgC = dmgCol;
    
if( unitAttack )
{
    for( i = 0; i < ds_list_size(enemiesAtking); i+= 1 )
    {
        scrActorDamage(ds_list_find_value(enemiesAtking,i),global.myCollider,0,0,!global.physOrNot,!global.unitAttack, global.dmgC);        
    }
}
else
{
    with targets 
    {
        collider = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,global.myCollider,false,true);
            
        if (instance_exists(collider)) 
        {
            scrActorDamage(self,global.myCollider,0,0,!global.physOrNot,!global.unitAttack, global.dmgC);
        }
    }
}    

with global.myCollider 
{
    instance_destroy();
}
