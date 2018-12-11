var pd = point_direction(objWall.x, objWall.y,x,y);
var new_push_amount = movmentSpeed * cos( degtorad( direction - pd));
x += lengthdir_x(movmentSpeed, pd);
y += lengthdir_y(movmentSpeed, pd);