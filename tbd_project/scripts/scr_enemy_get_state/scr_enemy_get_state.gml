if(enemy_hp <= 0){
	state = enemy_states.DEAD;
}

if(hsp == 0){
	state = enemy_states.IDLE;
	//scr_get_enemy_sprite(enemy_state.idle);
	//log("Set Idle Sprite");
}

if(!place_meeting(x, y + 1, obj_block_solid)){
	state = enemy_states.INAIR;
}

if(!place_meeting(x, y, obj_Player)){
	state = enemy_states.MOVE;
}else{
	state = enemy_states.ATTACK;
}

