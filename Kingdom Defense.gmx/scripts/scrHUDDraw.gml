//global disappearance
if ( global.YAddDo )
{
    global.YAdd += 2;
    
    if ( global.YAdd >= global.YAddMax )
    {
        global.YAddDo = false;
    }
}

//draw cash
draw_sprite(sCash,-1,view_xview[0],view_yview[0]-global.YAdd);

scrDrawTxtOutlined(string(global.crystals),fHUD,fHUDBG,view_xview[0]+17,view_yview[0]+5-global.YAdd,c_white,c_black);

/*
//Waves Display
X = view_xview[0]+800;
Y = view_yview[0]+450;

draw_sprite(sWavesDisplay,1,X,Y+global.YAdd);

if ( instance_exists( oMonsterManager ) )
{
    percent = oMonsterManager.wave_counter / oMonsterManager.wave_intervall;
    wv_max = oMonsterManager.anzahlWaves;
    wv_act = oMonsterManager.wave;
}

draw_rectangle_color(X-58,Y-4-( 17 * percent )+global.YAdd,X-45,Y-4+global.YAdd,c_white,c_white,c_white,c_white,false);
draw_sprite(sWavesDisplay,0,X,Y+global.YAdd);

scrDrawTxtOutlined(string(wv_act),fHUD,fHUDBG,X-43,Y-20+global.YAdd,c_white,c_black);
scrDrawTxtOutlined(string(wv_max),fHUD,fHUDBG,X-20,Y-20+global.YAdd,c_white,c_black);
*/
draw_set_font(fHUD);

//gold drawing
if ( goldBar_state == 1 )
{
    if ( goldBar_yAdd < 25 )
    goldBar_yAdd += 1;
    else
    {
        goldBar_state = 3;
    }
}

if ( goldBar_state == 3 )
{
    goldBar_counter -= 1;
    
    if ( goldBar_counter <= 0 )
    {
        goldBar_counter = goldBar_stay;
        goldBar_state = 2;
    }
}

if ( goldBar_state == 2 )
{
    if ( goldBar_yAdd > 0 )
    goldBar_yAdd -= 1;
    else
    {
        goldBar_state = 0;
    }
}

draw_sprite(sGold_Bar,-1,view_xview[0],view_yview[0]+450-goldBar_yAdd);
draw_text_color(view_xview[0]+16,(view_yview[0]+454)-goldBar_yAdd,string(global.cash),c_white,c_white,c_white,c_white,1);

//essence drawing
if ( essenceBar_state == 1 )
{
    if ( essenceBar_yAdd < 25 )
    essenceBar_yAdd += 1;
    else
    {
        essenceBar_state = 3;
    }
}

if ( essenceBar_state == 3 )
{
    essenceBar_counter -= 1;
    
    if ( essenceBar_counter <= 0 )
    {
        essenceBar_counter = essenceBar_stay;
        essenceBar_state = 2;
    }
}

if ( essenceBar_state == 2 )
{
    if ( essenceBar_yAdd > 0 )
    essenceBar_yAdd -= 1;
    else
    {
        essenceBar_state = 0;
    }
}

draw_sprite(sEssence_Bar,0,view_xview[0]+800,(view_yview[0]+450)-essenceBar_yAdd);
draw_text_color(view_xview[0]+570,(view_yview[0]+454)-essenceBar_yAdd,string(global.essences),c_white,c_white,c_white,c_white,1);
