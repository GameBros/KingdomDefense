//- initializes main values

//main values
global.pause = false;
global.debug = false;
global.cash = 0;
global.essences = 0;
global.room_type = 0;           //0 = title, 1 = worldmap, 2 = a level 

//cards main things
global.cards_inventory = ds_list_create();
ds_list_add(global.cards_inventory,0);
ds_list_add(global.cards_inventory,1);
ds_list_add(global.cards_inventory,2);
ds_list_add(global.cards_inventory,3);
ds_list_add(global.cards_inventory,4);
ds_list_add(global.cards_inventory,5);
ds_list_add(global.cards_inventory,6);
ds_list_add(global.cards_inventory,7);
//ds_list_add(global.cards_inventory,14);
//ds_list_add(global.cards_inventory,15);
global.units_amount = 3;                    //how much cards can be equipped?
global.cards_chosen = ds_list_create();

//elements
global.light = 1;
global.dark = 2;
global.fire = 3;
global.ice = 4;
global.thunder = 5;

//treasure
global.bronze_worth = 5;
global.silver_worth = 10;
global.gold_worth = 15;

//other
global.gameName = "KingdomDefense";
global.cam_mode = 0;                        //camera shall follow the mouse
global.cam_speed = 15;                      //speed the camera follows the target (the bigger the slower!)
global.levels_finished = -1;                //Must be -1 for initilization
global.levels_amount = 10;                  //How much levels it give
