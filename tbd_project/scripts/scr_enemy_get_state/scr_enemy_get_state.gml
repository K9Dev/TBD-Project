if(!place_meeting(x, y + 1, obj_block_solid)){
	state = enemy_states.INAIR;
}

if(place_meeting(x - 5, y, obj_Player_Tower)){
	
	target = global.playerTowerObj;
	state = enemy_states.ATTACK;
	
	//log("Attacking Tower State");
	return;
}

if(!place_meeting(x, y, obj_Player) && !place_meeting(x, y, obj_TestFriendly)){
	state = enemy_states.MOVE;
}else if(place_meeting(x, y, obj_Player)){
	target = global.playerObj;
	state = enemy_states.ATTACK;
}else if(place_meeting(x, y, obj_TestFriendly)){
	target = obj_TestFriendly;
	state = enemy_states.ATTACK;
}

//else{
//	if(hsp == 0){
//		state = enemy_states.IDLE;
//		//scr_get_enemy_sprite(enemy_state.idle);
//		//log("Set IDLE");
//	}
//}

if(enemy_hp <= 0){
	state = enemy_states.DEAD;
	//log("Enemy State Dead");
}