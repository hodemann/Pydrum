draw_self()

if image_xscale = 1
direction = point_direction(x,y, mouse_x, mouse_y);
else
direction = point_direction(x,y, mouse_x, mouse_y);

var max_length = room_width + room_height;
var solid_object = objWall;

for(var i = 0; i < max_length; i++){

    var lx = x + lengthdir_x(i, direction);
    var ly = y + lengthdir_y(i, direction);

    if(collision_point(lx, ly, solid_object, false, true)){
        break;
    }

}
 
if image_xscale = 1 
draw_line(x + 11,y - 7,lx,ly)
else
draw_line(x - 11,y - 7,lx,ly)
