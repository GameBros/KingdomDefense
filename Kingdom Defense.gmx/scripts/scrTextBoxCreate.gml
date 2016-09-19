//argument0 = sprite of the text box
//argument1 = sprite of the faceset
//argument2 = sprite of the symbol which says:"go to next page"
//argument3 = sprite of the symbol which says:"end the text"

//argumnet4 = letter appearing speed
//argumnet5 = letter appearing speed fast
//argument6 = letter appearing sound

//argument7 = x of the text box (always the left corner!)
//argument8 = y of the text box (always the top corner!)
//argument9 = offset from corner of textbox for the faceSet
//argument10 = font
//argumnet11 = text
//argument12 = key for actions

//main settings
//---------------------------------------------------------------------------------
action_key = argument12
sprite_textBox = argument0  //sprite of the textbox background
sprite_faceSet = argument1  //sprite of the faceset
sprite_symbol1 = argument2  //sprite of the 1st symbol
sprite_symbol2 = argument3  //sprite of the 2nd symbol
text_speed = argument4  //actual appearing speed of the letters 
text_speedS = argument4  //appearing speed of the letters when the player doesn�t hold down the action key
text_speedFast = argument5  //appearing speed of the letters when holding down action key

text_speed_min=1
text_speed_max=10000

if text_speed<text_speed_min
    text_speed = text_speed_min
    
if text_speed>text_speed_max
    text_speed = text_speed_max
    
letter_appear_sound = argument6   //sound which is played when a letter appears

//---------------------------------------------------------------------------------
//regular vars
//---------------------------------------------------------------------------------
xSave=x
ySave=y

image_alpha = 0
state = 0   //0=fade in,1=nothing,2=fade out
STATE_FADEIN = 1;
STATE_NOTHING = 0;
STATE_FADEOUT = 2;

fade_sp = 0.07

faceSet_images=sprite_get_number(sprite_faceSet)
faceSet_image=0 //which image will be drawn

//for the symbols
symbol1_images=sprite_get_number(sprite_symbol1)
symbol1_image=0 //which image will be drawn

symbol2_images=sprite_get_number(sprite_symbol2)
symbol2_image=0 //which image will be drawn

sSpr=sprite_symbol1
sImg=symbol1_image 

nP=0

//---------------------------------------------------------------------------------
//coordinates of sprites
//---------------------------------------------------------------------------------
textBox_x1 = argument7
textBox_y1 = argument8
textBox_x2 = argument7 + (sprite_get_bbox_right(sprite_textBox)-sprite_get_bbox_left(sprite_textBox))
textBox_y2 = argument8 + (sprite_get_bbox_bottom(sprite_textBox)-sprite_get_bbox_top(sprite_textBox))

faceSet_offset = argument9
faceSet_x1 = argument7 + faceSet_offset
faceSet_y1 = argument8 + faceSet_offset
faceSet_x2 = faceSet_x1 + (sprite_get_bbox_right(sprite_faceSet)-sprite_get_bbox_left(sprite_faceSet))
faceSet_y2 = faceSet_y1 + (sprite_get_bbox_bottom(sprite_faceSet)-sprite_get_bbox_top(sprite_faceSet)) 

symbols_x1 = textBox_x2 - (sprite_get_bbox_right(sprite_textBox)-sprite_get_bbox_left(sprite_textBox))-2
symbols_y1 = textBox_y2 - (sprite_get_bbox_right(sprite_textBox)-sprite_get_bbox_left(sprite_textBox))-2
symbols_x2 = textBox_x2-2
symbols_y2 = textBox_y2-2
//---------------------------------------------------------------------------------

//text (one list of the pages. One page includes many arrays of the several textlines, which have the parameters of string,x,y)
//---------------------------------------------------------------------------------
//knowing the format and position of the text. The pages, the lines, the strings and the coordinates.
//---------------------------------------------------------------------------------
draw_set_font(argument10)
rawText = argument11

line1_x=faceSet_x2
line1_y=textBox_y1+2
line_x=line1_x
line_y=line1_y

if line_y>=faceSet_y2
{
    line_x=textBox_x1+2
}

font_height = string_height(rawText)

line=ds_list_create()

str=""
pages = ds_list_create()
page = ds_list_create()

i=1
ii=0
c_lines=0
c_pages=1
while(i <= string_length(rawText))
{
    str = str+string_char_at(rawText,i) 
    
    strSave = str;
    
    str_width = string_width(str) 
    
    if line1_y+(c_lines*font_height)>=faceSet_y2
    {
        line_x=textBox_x1+2
    }
    
    if (line_x+str_width)>(textBox_x2-3)
    {
        //new line
        
        s=string_char_at(str,string_length(str))    //for next line
        sBefore=string_char_at(str,string_length(str)-1)    //last character of complete line
        
        if words_detection==0
        {
            str2=string_copy(str,0,string_length(str)-1)    //complete line
            str=s   //reset the actual line var            
        }
        else
        {
            if string_count(" ",s)==1 or string_count(" ",sBefore)==1 or string_count("-",sBefore)==1
            {
                str2=string_copy(str,0,string_length(str)-1)    //complete line
                str=s   //reset the actual line var
            }
            else
            {
                g=0
                br=0
                p_s=string_char_at(str,string_length(str)-g)
            
                while(br=0)
                {
                    p_s=string_char_at(str,string_length(str)-g)  
                    g+=1
                                
                    if string_count(" ",p_s)==1
                    {
                        br=1
                    }
                }
                       
                str2=string_copy(str,0,string_length(str)-g)    //complete line
                s=string_copy(str,string_length(str)-g+1,string_length(str))   //the word in next line
            
                str=s   //reset the actual line var
            }
        }
        
        if ( line1_y+((c_lines+1)*font_height)>=textBox_y2)    //reach end of page?
        {
            //yes!
            c_pages+=1
            c_lines=0
            
            line_x=line1_x
            line_y=line1_y  
            
            ds_list_add(pages,page)
            page=ds_list_create()
        }

        scrSaveLine(str2)     
    }
    
    if ( string_count("\",strSave) > 0 )   
    {
        scrSaveLine( string_copy(strSave,0,string_length(strSave)-1) );
        
        c_pages+=1
        c_lines = 0
            
        str = "";
        
        line_x = line1_x
        line_y = line1_y  
            
        ds_list_add(pages,page)
        page=ds_list_create()
    }  

    i+=1 
    
    if i>string_length(rawText)
    {       
        scrSaveLine(str)
        ds_list_add(pages,page)
    }
}

//---------------------------------------------------------------------------------
//everything for drawing the text,appearing of the letters and going to next page
//---------------------------------------------------------------------------------
characters_drawn=0  //how much characters are drawn on the actual page
page_active=0   //(0 is the first)which page is active
page_end=0      //0= no, 1=yes

chars_max=0
line_actual=0   //the index of the actual appearing line

script_execute(scrTextBoxGetLines)
//---------------------------------------------------------------------------------
//---------------------------------------------------------------------------------
