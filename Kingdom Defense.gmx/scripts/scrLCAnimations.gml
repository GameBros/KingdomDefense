//- Initializes the animations of Unit Soldier

deathSprite = sLCDie;
winSprite = sLCWin;

//walking
//---------------------------------------------------------------------------------------------------------------------------------
animWalking = ds_list_create()

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,70)           //rotation of weapon
ds_list_add(f,37)           //x of weapon
ds_list_add(f,50)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,90)           //rotation of weapon
ds_list_add(f,38)           //x of weapon
ds_list_add(f,52)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk )     //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,90)           //rotation of weapon
ds_list_add(f,39)           //x of weapon
ds_list_add(f,52)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,70)           //rotation of weapon
ds_list_add(f,32)           //x of weapon
ds_list_add(f,52)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,40)           //rotation of weapon
ds_list_add(f,31)           //x of weapon
ds_list_add(f,51)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,15)           //rotation of weapon
ds_list_add(f,28)           //x of weapon
ds_list_add(f,53)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,10)           //rotation of weapon
ds_list_add(f,28)           //x of weapon
ds_list_add(f,53)           //y of weapon

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sLCWalk)      //unit sprite
ds_list_add(f,myWSpr)        //weapon sprite
ds_list_add(f,45)           //rotation of weapon
ds_list_add(f,34)           //x of weapon
ds_list_add(f,52)           //y of weapon

ds_list_add(animWalking,f)

//---------------------------------------------------------------------------------------------------------------------------------


//standing
//---------------------------------------------------------------------------------------------------------------------------------
animStanding = ds_list_create()

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sLCStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,51)           

ds_list_add(animStanding,f)
//---------------------------------------------------------------------------------------------------------------------------------

//attacking for short ranges
//---------------------------------------------------------------------------------------------------------------------------------
animAttacking2 = ds_list_create()

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,28)           
ds_list_add(f,50)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,75)           
ds_list_add(f,29)           
ds_list_add(f,50)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,30)           
ds_list_add(f,35)           
ds_list_add(f,52)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,35)           
ds_list_add(f,52)             

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)            

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)          

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)            

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)          

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,53)           
ds_list_add(f,51)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,35)           
ds_list_add(f,52)           

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,35)           
ds_list_add(f,52)            

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,35)           
ds_list_add(f,52)            

ds_list_add(animAttacking2,f)

f = ds_list_create()

ds_list_add(f,sLCAttack2)      
ds_list_add(f,myWSpr)        
ds_list_add(f,45)           
ds_list_add(f,29)           
ds_list_add(f,50)            

ds_list_add(animAttacking2,f)
//---------------------------------------------------------------------------------------------------------------------------------

//attacking long ranges
//---------------------------------------------------------------------------------------------------------------------------------
animAttacking = ds_list_create()

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,295)           
ds_list_add(f,27)           
ds_list_add(f,45)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,310)           
ds_list_add(f,18)           
ds_list_add(f,41)             

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,330)           
ds_list_add(f,18)           
ds_list_add(f,41) 

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,360)           
ds_list_add(f,6)           
ds_list_add(f,42)         

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,10)           
ds_list_add(f,6)           
ds_list_add(f,42)          

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,15)           
ds_list_add(f,6)           
ds_list_add(f,42)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,40)           
ds_list_add(f,4)           
ds_list_add(f,46)             

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,40)           
ds_list_add(f,4)           
ds_list_add(f,46)            

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,35)           
ds_list_add(f,13)           
ds_list_add(f,42)         

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,100)           
ds_list_add(f,90000)           
ds_list_add(f,51)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,90000)           
ds_list_add(f,36)           

ds_list_add(animAttacking,f)

f = ds_list_create()

ds_list_add(f,sLCAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,320)           
ds_list_add(f,29)           
ds_list_add(f,50)           

ds_list_add(animAttacking,f)
//---------------------------------------------------------------------------------------------------------------------------------
