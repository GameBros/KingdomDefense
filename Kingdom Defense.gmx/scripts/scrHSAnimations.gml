deathSprite = sHSDie;
winSprite = sHSWin;

//walking
//---------------------------------------------------------------------------------------------------------------------------------
animWalking = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,36)           
ds_list_add(f,50)           

ds_list_add(animWalking,f)

f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,38)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,39)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,350)           
ds_list_add(f,33)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,20)           
ds_list_add(f,32)           
ds_list_add(f,51)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,15)           
ds_list_add(f,28)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,30)           
ds_list_add(f,28)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
f = ds_list_create()

ds_list_add(f,sHSWalk)      
ds_list_add(f,myWSpr)        
ds_list_add(f,50)           
ds_list_add(f,35)           
ds_list_add(f,52)           

ds_list_add(animWalking,f)
//---------------------------------------------------------------------------------------------------------------------------------
//standing
//---------------------------------------------------------------------------------------------------------------------------------
animStanding = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)       
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)

f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
f = ds_list_create()

ds_list_add(f,sHSStand)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)           

ds_list_add(animStanding,f)
//---------------------------------------------------------------------------------------------------------------------------------

//waiting
//---------------------------------------------------------------------------------------------------------------------------------
animWaiting = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSWait)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)  
ds_list_add(f,90)           
ds_list_add(f,40)           
ds_list_add(f,50)                 

ds_list_add(animWaiting,f)
//---------------------------------------------------------------------------------------------------------------------------------

//attacking
//---------------------------------------------------------------------------------------------------------------------------------
animHealing = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,90)           
ds_list_add(f,35)           
ds_list_add(f,43)                   

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,95)           
ds_list_add(f,32)           
ds_list_add(f,43)        

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,98)           
ds_list_add(f,23)           
ds_list_add(f,44)       

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,105)           
ds_list_add(f,23)           
ds_list_add(f,44)        

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,60)          
ds_list_add(f,35)           
ds_list_add(f,43)       

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,30)           
ds_list_add(f,40)           
ds_list_add(f,44)         

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)         

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)        

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)        

ds_list_add(animHealing,f)

f = ds_list_create()

ds_list_add(f,sHSAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)        

ds_list_add(animHealing,f)
//---------------------------------------------------------------------------------------------------------------------------------

//attackEnd
//---------------------------------------------------------------------------------------------------------------------------------
animAttackEnd = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSAfterAttack)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)                   

ds_list_add(animAttackEnd,f)
//---------------------------------------------------------------------------------------------------------------------------------

//back to wait position
//---------------------------------------------------------------------------------------------------------------------------------
animBackToWait = ds_list_create()

f = ds_list_create()

ds_list_add(f,sHSAttackFinish)      
ds_list_add(f,myWSpr)        
ds_list_add(f,0)           
ds_list_add(f,47)           
ds_list_add(f,46)        

ds_list_add(animBackToWait,f)

f = ds_list_create()

ds_list_add(f,sHSAttackFinish)      
ds_list_add(f,myWSpr)        
ds_list_add(f,30)           
ds_list_add(f,40)           
ds_list_add(f,50)       

ds_list_add(animBackToWait,f)

f = ds_list_create()

ds_list_add(f,sHSAttackFinish)      
ds_list_add(f,myWSpr)        
ds_list_add(f,50)           
ds_list_add(f,40)           
ds_list_add(f,50)          

ds_list_add(animBackToWait,f)

f = ds_list_create()

ds_list_add(f,sHSAttackFinish)      
ds_list_add(f,myWSpr)        
ds_list_add(f,75)           
ds_list_add(f,40)           
ds_list_add(f,50)          

ds_list_add(animBackToWait,f)
//---------------------------------------------------------------------------------------------------------------------------------
