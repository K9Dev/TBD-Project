
//global.guiX = camera_get_view_x(view_camera[1]) + 505;
//global.guiY = camera_get_view_y(view_camera[1]) + 885;

global.guiX = (display_get_width() / 2) - 134;
global.guiY = display_get_height() - 32;
global.guiYBars =  global.guiY + 20;

log("X: " + string(global.guiX));
log("Y: " + string(global.guiY));
log("YB: " + string(global.guiYBars));

var guiX = global.guiX;
var guiY = global.guiY;
var guiYBars = global.guiYBars;

draw_sprite_ext(spr_player_gui, 0, guiX, guiY, 1, 1, 0, c_white, image_alpha);

global.guiEnemyX = guiX + 785;
var guiEnemyX = global.guiEnemyX;
draw_sprite_ext(spr_Enemy_Towe_Healthbar1, 0, guiEnemyX, guiYBars, 1, 1, 0, c_white, image_alpha);

global.guiPlayerTowerX = guiX + 85;
var guiPlayerTowerX = global.guiPlayerTowerX;
draw_sprite_ext(spr_Player_Tower_Healthbar1, 0, guiPlayerTowerX, guiYBars, 1, 1, 0, c_white, image_alpha);

global.guiPlayerX = guiX + 435;
var guiPlayerX = global.guiPlayerX;
draw_sprite_ext(spr_Player_Healthbar, 0, guiPlayerX, guiYBars, 1, 1, 0, c_white, image_alpha);
