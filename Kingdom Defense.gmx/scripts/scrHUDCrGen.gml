//state
global.HUD_state = 0;          //0 = normal, 1 = grabbing a unit
global.HUD_grabKind = -1;      //-1 = not grabbing, 0 = infanterie,2=...

//wave showing
percent = 0;
wv_max = 0;
wv_act = 0;

//gold 
goldBar_state = 0;          //0 = not visible, 1 = going up, 2 = going down
goldBar_yAdd = 0;           //actual y adding 
goldBar_stay = 120;
goldBar_counter = goldBar_stay;

//essences 
essenceBar_state = 0;          //0 = not visible, 1 = going up, 2 = going down
essenceBar_yAdd = 0;           //actual y adding 
essenceBar_stay = 120;
essenceBar_counter = essenceBar_stay;

//other 
global.YAdd = 0;
global.YAddMax = 90;
global.YAddDo = false;
