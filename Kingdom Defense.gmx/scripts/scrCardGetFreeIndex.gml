indexFound = -1;
i = 0;
while(indexFound == -1)
{
    val = ds_list_find_value(manager.cards_chosen_temp,i);    
    if( val == -1 )
    {
        return i;
    }
    
    i += 1;
}
