var follow = argument0;
var cam = argument1;

//log("FolloW Death: " + string(follow));
// Update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;	
}

////// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

view_w_half = startW * 0.5;
view_h_half = startH * 0.5;


x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

if(death_sizeW < camera_get_view_width(cam)){
	startW -= startW / 100;
} 
	
if(death_sizeH < camera_get_view_height(cam)){
	startH -= startH / 100;
}

if(startW < death_sizeW){
	startW = death_sizeW;
}

if(startH < death_sizeH){
	startH = death_sizeH;
}
	
//log("Setting cam W to: " + string(startW));
//log("Setting cam H to: " + string(startH));
	
// Update camera view
camera_set_view_size(cam, startW, startH);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
//camera_set_view_pos(cam, x , y);