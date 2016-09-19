//This script contains all that is done by EVERY unit (soldiers,archers,healers,magicans,...) in draw event

//If mouse rolls over + hp bar + slotmoving system
scrUnitDrawOther();

//Manage Animation
scrUnitAnimation();

//Draw unit
scrUnitDrawSelf();

//Draw weapon
scrUnitDrawWeapon();

//Dead?
scrUnitCheckDead();

isVisible = true;
