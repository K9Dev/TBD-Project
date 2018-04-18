
if(hp <= 0){
	
	instance_create_depth(x, y + 60, depth, obj_Enemy_Tower2);
	instance_destroy();
}

if(hp <= hp_state_orange && hp > hp_state_red){
	sprite_index = spr_EnemyTower2;
}

if(hp <= hp_state_red){
	sprite_index = spr_EnemyTower3;
}
