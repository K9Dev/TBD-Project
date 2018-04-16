
var player = global.playerTowerObj;

if(!instance_exists(obj_Player_Tower)) exit;

draw_health = lerp(draw_health, player.hp, 0.6);

//vX = camera_get_view_width(camera_get_active()) * 0.5;
//vY = camera_get_view_height(camera_get_active()) * 0.8;

vX = global.camX - 277;
vY = global.camY + 224;

vW = global.camW * 0.5;
vH = global.camH * 0.9;

//log("X: " + string(vX));
//log("Y: " + string(vY));

//draw_sprite_ext(spr_Player_Healthbar2, 0, vX + 3, vY + 4, draw_health / 100, 1, 0, c_white, 1);

//draw_set_color(c_red);
//draw_rectangle(vX  + 3, vY  + 4, (vX  + 96) * draw_health / player.maxHp, vY  + 8, false);
////draw_rectangle(vX, vY, vX * draw_health / player.maxHp, vY, false);
//draw_set_color(c_white);

image_xscale = (draw_health / player.maxHp);

//y = vH;
//x = vW;
y = vY;
x = vX;
draw_self();