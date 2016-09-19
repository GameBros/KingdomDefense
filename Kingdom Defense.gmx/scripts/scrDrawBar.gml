//- Draws a bar with the wanted attributes

//set the values
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
current = argument4;
maximum = argument5;
backcol = argument6;
col1 = argument7;
col2 = argument8;
dire = argument9;
back = argument10;
border = argument11;

//how much % is current from maximum?
amount = 100*(current/maximum);

//draw the bar using the health bar function
draw_healthbar(x1,y1,x2,y2,amount,backcol,col1,col2,dire,back,border);
