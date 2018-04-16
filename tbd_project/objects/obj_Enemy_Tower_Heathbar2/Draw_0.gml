
var player = global.enemyTowerObj;

if(!instance_exists(obj_Enemy_Tower)) exit;

draw_health = lerp(draw_health, player.hp, 0.6);


vX = global.camX + 183;
vY = global.camY + 224;

//vW = global.camW * 0.5;
//vH = global.camH * 0.9;

//log("X: " + string(vX));
//log("Y: " + string(vY));

image_xscale = (draw_health / player.maxHp);

//y = vH;
//x = vW;
y = vY;
x = vX;
draw_self();