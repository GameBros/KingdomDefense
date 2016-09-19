//states
//---------------------------------------------------------------------------------------------
if state==0
{
    image_alpha+=fade_sp
    if image_alpha>=1
    {
        image_alpha=1
        state=1
    }
}

if state=2
{
    image_alpha-=fade_sp
    if image_alpha<=0
    {
        image_alpha=0
        
        if ( object_index == oTextbox2 )
        {
            instance_create(0,0,oBlackFade);
        }
        
        instance_destroy()
    }
}
//---------------------------------------------------------------------------------------------

//drawing
//---------------------------------------------------------------------------------------------
draw_sprite_ext(sprite_textBox,-1,view_xview[0]+textBox_x1+(x-xSave),view_yview[0]+textBox_y1+(y-ySave),image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_sprite_ext(sprite_faceSet,faceSet_image,view_xview[0]+faceSet_x1+(x-xSave),view_yview[0]+faceSet_y1+(y-ySave),image_xscale,image_yscale,image_angle,c_white,image_alpha)

//face set
faceSet_speedFactor=text_speed/50
if page_end==false and (state=STATE_NOTHING or state=STATE_FADEIN)
{
    faceSet_image+=faceSet_speedFactor

    if faceSet_image>faceSet_images
    {
        faceSet_image=-1+(faceSet_image-faceSet_images)
    }
}
else
{
    if faceSet_image!=0
    faceSet_image=0
}
    
//the text
if state==STATE_NOTHING or state==STATE_FADEIN
{
    if page_end==false
    {
        chars_max+=text_speed
        
        if (chars_max >= 100)
        {
            sound_play(soLetterAppear)
            characters_drawn_prev=characters_drawn
            
            while(chars_max>=100)
            {
                characters_drawn+=1
                chars_max-=100
            }
        
            lin=ds_list_find_value(all_lines,line_actual)
            str=ds_list_find_value(lin,0)
        
            s=string_char_at(str,characters_drawn+1)
            
            while(string_count(" ",s)==1)
            {
                s=string_char_at(str,characters_drawn) 
                characters_drawn+=1   
            }
        
            ds_list_replace(ds_list_find_value(all_lines,line_actual),3,characters_drawn)
    
            if characters_drawn>string_length(str)
            {
                //one line is at end
                characters_drawn=characters_drawn-string_length(str)
                line_actual+=1
                
                ds_list_replace(ds_list_find_value(all_lines,line_actual),3,characters_drawn)
            
                if line_actual>ds_list_size(all_lines)
                {
                    //one page is ended
                    character_drawn=0
                    page_end=true
                    line_actual=0
                }
            }
        }    
    }
    else
    {
        characters_drawn=0
    }
}

i=0
while(i<ds_list_size(all_lines))
{
    t=ds_list_find_value(all_lines,i)
    
    a=ds_list_find_value(t,0)
    b=ds_list_find_value(t,1)
    c=ds_list_find_value(t,2)
    chars=ds_list_find_value(t,3)

    str=string_copy(a,0,chars)
    
    color=c_black
    
    if string_length(str)>0
    draw_text_color(view_xview[0]+b+(x-xSave),view_yview[0]+c+(y-ySave),str,color,color,color,color,image_alpha)  
    
    i+=1
}

//the symbols
sym_alpha=0
if page_end==true
{
    sym_alpha=image_alpha
    if page_active+1==ds_list_size(pages)
    {
        sSpr=sprite_symbol2
        symbol1_image=0  
    }    
    else
    {
        sSpr=sprite_symbol1
        symbol2_image=0
    }
}

if page_active+1==ds_list_size(pages)
{
    symbol2_image+=1

    if symbol2_image>symbol2_images
    {
        symbol2_image=0
    }    

    sImg=symbol2_image 
}
else
{
    symbol1_image+=1

    if symbol1_image>symbol1_images
    {
        symbol1_image=0
    }  
    
    sImg=symbol1_image   
}

X = symbols_x2+(x-xSave);
Y = symbols_y2+(y-ySave);
draw_sprite_ext(sSpr,sImg,view_xview[0]+X,view_yview[0]+Y,image_xscale,image_yscale,image_angle,c_white,sym_alpha)
//---------------------------------------------------------------------------------------------

col = point_in_rectangle(oCursor.xSave,oCursor.ySave,view_xview[0]+textBox_x1,view_yview[0]+textBox_y1,view_xview[0]+textBox_x2,view_yview[0]+textBox_y2,);

//input
if ( ( keyboard_check(action_key) || ( col && mouse_check_button( mb_left ) ) )  and nP==0 )
{
    text_speed=text_speedFast
}
else
{
    text_speed=text_speedS
}

if ( ( keyboard_check_pressed(action_key) || ( mouse_check_button_pressed( mb_left ) && col ) ) and page_end==true )
{
    nP=1
    text_speed=text_speedS
    if page_active+1==ds_list_size(pages)    
    {
        state=STATE_FADEOUT
        //page_end=false
    }
    else
    {
        page_active+=1
        page_end=false
        script_execute(scrTextBoxGetLines)
    }
}

if ( keyboard_check_released(action_key) || !col || mouse_check_button_released(mb_left) )
nP=0
