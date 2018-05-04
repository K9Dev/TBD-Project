
var player = global.playerTowerObj;

if(!instance_exists(obj_Player_Tower)) exit;

draw_health = lerp(draw_health, player.hp, 0.6);

vX = global.guiX + 6;
vY = global.guiYBars + 6;

depth = -1001;

//image_yscale = 3;
image_xscale = 2 * (draw_health / player.maxHp);

y = vY;
x = vX;

draw_self();