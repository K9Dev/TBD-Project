/// @description Setup Camera

cam = view_camera[0];

//follow = global.playerObj;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

death_sizeW = 560;
death_sizeH = 280;

startW = camera_get_view_width(cam);
startH = camera_get_view_height(cam);

xTo = xstart;
yTo = ystart;