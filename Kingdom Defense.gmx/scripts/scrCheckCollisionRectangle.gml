//- Returns whether the given point collides with the rectangle

px = argument0;
py = argument1;
x1 = argument2;
x2 = argument3;
y1 = argument4;
y2 = argument5;

if (px > x1 && px <= x2) && (py > y1 && py <= y2) {
    return true;
} else {
    return false;
}
