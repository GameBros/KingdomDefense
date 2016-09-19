//create unit cards
unitCards_xStart = 68;
unitCards_xOffset = 55;

i = 0;
while(i < ds_list_size(global.cards_chosen))
{
    uni = ds_list_find_value(global.cards_chosen,i);
    
    cdX = unitCards_xStart+(i*unitCards_xOffset);
           
    card = instance_create(cdX,view_yview[0],oBtCreateUnit);
    card.ind = uni;
    uni_new = uni;
    
    card.price = scrGetUnitVar(uni_new,4);
    card.sprite = scrGetUnitVar(uni_new,5);
    
    i += 1;
}
