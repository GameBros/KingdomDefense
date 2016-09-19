all_lines=ds_list_create()

aL=ds_list_find_value(pages,page_active)

i=0
while(i<ds_list_size(aL))
{
    ds_list_add(all_lines,ds_list_find_value(aL,i))
    i+=1
} 
