
//global.guiX = camera_get_view_x(view_camera[1]) + 505;
//global.guiY = camera_get_view_y(view_camera[1]) + 885;

//global.guiX = (display_get_width() / 2) - 134;
//global.guiY = display_get_height() - 32;

//global.guiX = (window_get_width() / 2) - (window_get_width() / 3);
//global.guiY = window_get_height() - 32;

global.guiX = (display_get_gui_width() / 2) - 250;
global.guiY = display_get_gui_height() - 40;
global.guiYBars =  global.guiY + 9;

log("X: " + string(global.guiX));
log("Y: " + string(global.guiY));
log("YB: " + string(global.guiYBars));

var guiX = global.guiX;
var guiY = global.guiY;
var guiYBars = global.guiYBars;

draw_sprite_ext(spr_player_gui, 0, guiX, guiY, 1, 1, 0, c_white, image_alpha);

//global.guiEnemyX = guiX + 785;
global.guiEnemyX = guiX + 355;
var guiEnemyX = global.guiEnemyX;
var enemyTower = global.enemyTowerObj;
if(instance_exists(obj_Enemy_Tower)){
	drawHealthEnemyTower = lerp(drawHealthEnemyTower, enemyTower.hp, 0.6);
	var xscale = 1 * (drawHealthEnemyTower / enemyTower.maxHp);
	draw_sprite_ext(spr_Enemy_Towe_Healthbar2, 0, guiEnemyX, guiYBars, xscale, 1, 0, c_white, image_alpha);
}

//global.guiPlayerTowerX = guiX + 85;
global.guiPlayerTowerX = guiX + 7;
var guiPlayerTowerX = global.guiPlayerTowerX;
var playerTower = global.playerTowerObj;
if(instance_exists(obj_Player_Tower)){
	drawHealthPlayerTower = lerp(drawHealthPlayerTower, playerTower.hp, 0.6);
	var xscale = 1 * (drawHealthPlayerTower / playerTower.maxHp);
	draw_sprite_ext(spr_Player_Tower_Healthbar2, 0, guiPlayerTowerX, guiYBars, xscale, 1, 0, c_white, image_alpha);
}

//global.guiPlayerX = guiX + 435;
global.guiPlayerX = guiX + 181;
var guiPlayerX = global.guiPlayerX;
var player = global.playerObj;
if(instance_exists(obj_Player)){
	drawHealthPlayer = lerp(drawHealthPlayer, player.hp, 0.6);
	var xscale = 1 * (drawHealthPlayer / player.maxHp);
	draw_sprite_ext(spr_Player_Healthbar2, 0, guiPlayerX, guiYBars, xscale, 1, 0, c_white, image_alpha);
}
//draw_sprite_ext(spr_player_gui, 0, guiX, guiY, 1, 1, 0, c_white, image_alpha);