if( oCardsChooseManager.couldFightStatus > 0 )
{
    //Begin level
    for( i = 0; i < ds_list_size(oCardsChooseManager.cards_chosen_temp); i+= 1 )
    {
        ind = ds_list_find_value(oCardsChooseManager.cards_chosen_temp,i);
        
        if( ind != -1 )
        ds_list_add(global.cards_chosen,ind);
    }
    
    with oHUD
    {
        scrGUICrUnitcards();
    }
    
    with clsCardChoose
    instance_destroy();
    
    global.level_state = -2;
}
