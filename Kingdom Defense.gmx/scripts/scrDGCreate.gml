myGroup = 0;
scrUnitCreate();

//Unique things for Diggers
//-----------------------------------------------------------------------------------------
image_speed = 0.7;
animSp = 2;
deathSprite = sDGDie;
winSprite = sDGStand;
pauseSprite = sDGDig_Pause;

//sprites
scrDGLoadDirtSpr();

//digging treasures
treasureCounter = 0;    

//other
treasure = 0;          //0 = no treasure, 1 = bronze, 2 = silver, 3 = gold
tr = noone;            // the treasure object
pause = false;
finish = false;

//-----------------------------------------------------------------------------------------

//Things that use the attributes from general creation code
treasureRate = myAtkSp;
pauseRate = round(myAtkSp /2);
pauseCounter = -1;
