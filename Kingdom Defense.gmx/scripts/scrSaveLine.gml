//argument0 = string to save

line_x = faceSet_x2+2
line_y = line1_y+(c_lines*font_height)
        
if line1_y+(c_lines*font_height)>=faceSet_y2
{
    line_x=textBox_x1+2
}
        
line=ds_list_create()
        
ds_list_add(line,argument0)
ds_list_add(line,line_x)
ds_list_add(line,line_y)
ds_list_add(line,0)     //how much characters of this string are drawn        
        
ds_list_add(page,line)
c_lines+=1 
