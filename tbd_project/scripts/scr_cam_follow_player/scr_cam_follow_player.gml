// Update destination
var follow = argument0;
var cam = argument1;

//log("FolloW: " + string(follow));
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;	
}

// Update object position
x += (xTo - x) / 12;
y += (yTo - y) / 12;
//x += (xTo - x);
//y += (yTo - y);


x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);


// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);