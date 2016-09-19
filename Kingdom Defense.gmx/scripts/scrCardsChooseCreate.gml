//Create cards to choose
global.cards_chosen = ds_list_create();
cards_chosen_temp = ds_list_create();
for( i = 0; i < global.units_amount; i += 1 )
{
    ds_list_add(cards_chosen_temp,-1);
}

amount = ds_list_size(global.cards_inventory);
dX = view_xview[0]+68;
dY = view_yview[0]+97;
dist = 56;

made = 0;
for( i = 0; i < amount; i +=1 )
{
    cardIndex = ds_list_find_value(global.cards_inventory,i);
    //Create Card
    made += 1;
    row = floor(made/11);
    cd = instance_create(dX+(dist*(made-1)),dY+(row*64),oCardToChoose);
    cd.sprite_index = scrGetUnitVar(cardIndex,5);
    cd.xSave = dX+(dist*(made-1));
    cd.ySave = dY+(row*64);
    cd.manager = id;
    cd.index = cardIndex;
}

//Create ok button
instance_create(dX+160,dY+80,oCardsChooseOk);

cards_chosen = 0;       //how much cards are already chosen
couldFightStatus = 0;   //whether it is possible to fight with the equipped cards ( must be over 0 )
