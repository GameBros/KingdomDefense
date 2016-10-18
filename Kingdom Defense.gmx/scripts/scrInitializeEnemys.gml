//- Initializes the stats of all enemys

global.enemysAsData = ds_list_create();

//Slimy
enemy = ds_list_create();
scrInitializeEnemy(0,4,-0.6,85,1,1,15,1,0,0,false,0,6,10,5,1);
scrInitializeEnemyAnim(sE_SlimeMv,sE_SlimeAt,sE_SlimeDi,sE_SlimeCol,0);

//IceSlimy
enemy = ds_list_create();
scrInitializeEnemy(1,6,-0.6,85,1,1,15,1,0,0,false,0,6,10,5,1);
scrInitializeEnemyAnim(sE_IceSlimeMv,sE_IceSlimeAt,sE_IceSlimeDi,sE_SlimeCol,0);

//IceBug
enemy = ds_list_create();
scrInitializeEnemy(2,4,-0.6,85,1,1,15,1,0,0,true,0,10,10,5,1);
scrInitializeEnemyAnim(sE_IceBugMv,sE_IceBugAt,sE_IceBugDi1,sE_IceBugCol,sE_IceBugDi2);

//Skull
enemy = ds_list_create();
scrInitializeEnemy(3,10,-0.5,85,2,1,50,1,0,0,false,0,3,10,5,3);
scrInitializeEnemyAnim(sSkull1Mv,sSkull1At,sSkullDi,sSkull1Col,0);

//argument0     index
//argument1     attack 
//argument2     movement speed   
//argument3     100-85 = number of frames passing until comitting the attack
//argument4     Def
//argument5     Luck    
//argument6     HP
//argument7     Attack Range
//argument8     MgcDef
//argument9     MgcAtk
//arguemnt10    Flying or not 
//argument11    Element
//argument12    atkFrame
//argument13    gold enemy drops
//arguemnt14    chance to drop gold         0-100 %
//arguemnt15    object atk power

///////////////////////////  Animations /////////////////////////

//argument0     animWalking;
//argument1     animAttacking;
//argument2     animDieing;
//argument3     attack collision sprite;
//argument4     animDieing2;
