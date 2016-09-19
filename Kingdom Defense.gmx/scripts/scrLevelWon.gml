//Everything that happens when level is lost

global.level_state = 1;
global.YAddDo = true;
    
with oWhileNotWon
{
    instance_destroy();
}
    
instance_create(x,y,oEnCryEx_1);
