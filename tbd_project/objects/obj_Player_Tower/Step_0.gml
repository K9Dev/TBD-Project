if(hp <= 0){
	global.gameover = true;
	instance_create_depth(x, y, depth, obj_Player_Tower2)
	instance_destroy();
}

if(hp <= hp_state_orange && hp > hp_state_red){
	sprite_index = spr_PlayerTower2;
	image_index = 0;
}

if(hp <= hp_state_red){
	sprite_index = spr_PlayerTower2;
	image_index = 1;
}
