//draw cash
draw_sprite(sOvCashBg,-1,0,room_height);
prefix = "";
// f�hrende nullen auskommentiert
/*global.cash += 1000;
if(global.cash < 10) prefix = "00000000";
else if(global.cash < 100) prefix = "0000000";
else if(global.cash < 1000) prefix = "000000";
else if(global.cash < 10000) prefix = "00000";
else if(global.cash < 100000) prefix = "0000";
else if(global.cash < 1000000) prefix = "000";
else if(global.cash < 10000000) prefix = "00";
else if(global.cash < 100000000) prefix = "0";
*/
scrDrawTxtOutlined(prefix+string(global.cash),fHUD,fHUDBG,17,room_height-16,c_white,c_black);
