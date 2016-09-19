//arg0 = index;
//arg1 = myLevel;
//arg2 = connection1;
//arg3 = connection2;
//arg4 = connection3;
//arg5 = connection4;
//arg6 = connection5;
//arg7 = connection6;

state = 0;
myButton = 0;
image_speed = 0;
index = arg0;
myLevel = arg1;

free = ds_list_find_index(global.con1_freePoints, index) != -1;

if ( free )
{
    state = 1;
    if( !room_exists(myLevel)  )
    {
        image_index = 1;
    }
}

myConnects = ds_list_create();

if ( arg2 != 0 )  ds_list_add(myConnects, arg2);
if ( arg3 != 0 )  ds_list_add(myConnects, arg3);
if ( arg4 != 0 )  ds_list_add(myConnects, arg4);
if ( arg5 != 0 )  ds_list_add(myConnects, arg5);
if ( arg6 != 0 )  ds_list_add(myConnects, arg6);
if ( arg7 != 0 )  ds_list_add(myConnects, arg7);

//For the dots
dotsDist = 14;
makeDotRoads = false;
