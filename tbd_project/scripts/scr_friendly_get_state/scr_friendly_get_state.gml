if(!place_meeting(x, y + 1, obj_block_solid)){
	state = friendly_states.INAIR;
}

if(place_meeting(x + 1, y, obj_Enemy_Tower)){
	
	target = global.enemyTowerObj;
	state = friendly_states.ATTACK;
	
	//log("Attacking Tower State");
	return;
}

if(!place_meeting(x, y, obj_TestEnemy)){
	state = friendly_states.MOVE;
}else if(place_meeting(x, y, obj_TestEnemy)){
	target = obj_TestEnemy;
	state = friendly_states.ATTACK;
}



//else{
//	if(hsp == 0){
//		state = friendly_states.IDLE;
//		//scr_get_enemy_sprite(enemy_state.idle);
//		//log("Set IDLE");
//	}
//}

if(friendly_hp <= 0){
	state = friendly_states.DEAD;
	//log("Enemy State Dead");
}