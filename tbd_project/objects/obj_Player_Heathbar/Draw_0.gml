


if(!instance_exists(obj_Player)) exit;

var player = global.playerObj;

draw_health = lerp(draw_health, player.hp, 0.6);

//vX = camera_get_view_width(camera_get_active()) * 0.5;
//vY = camera_get_view_height(camera_get_active()) * 0.8;

vX = global.camX - 50;
vY = global.camY + 220;

vW = global.camW * 0.5;
vH = global.camH * 0.9;

//log("X: " + string(vX));
//log("Y: " + string(vY));



//y = vH;
//x = vW;
y = vY;
x = vX;

draw_self();
