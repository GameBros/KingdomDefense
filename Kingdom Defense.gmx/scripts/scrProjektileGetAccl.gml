//Returns the acclivity(steigung) to a given x at the function with the given 3 points
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
x3 = argument4;
y3 = argument5;

X = argument6;

//ax� + bx +c, abgeleitet: 2ax + b

a = (x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2))/((x1-x2)*(x1-x3)*(x3-x2));

b = (sqr(x1)*(y2-y3)+sqr(x2)*(y3-y1)+sqr(x3)*(y1-y2))/((x1-x2)*(x1-x3)*(x2-x3));

        //2ax     b    
return ((2*a*X) + b)
