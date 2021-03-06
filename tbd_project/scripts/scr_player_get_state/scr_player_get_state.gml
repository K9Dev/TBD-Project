if(hp <= 0){
	log("Player death");
	state = player_states.DEAD;
	return;
}

if(fire_buff && !buffed){
	alarm[1] = obj_Player_Buffs.fireBuffDuration * room_speed;
	log("Firebuff enabled...");
	buffed = true;
	
	obj_Player_Stats.STR += obj_Player_Buffs.fireBuffStr;
}

if(resetAlarm){
	alarm[1] = obj_Player_Buffs.fireBuffDuration * room_speed;
	log("Reset Firebuff...");
	
	resetAlarm = false;
}

// Run during SHIFT
if(key_shift && state != player_states.INAIR){
	state = player_states.RUN;
	return;
}

if(place_meeting(x, y + 1, obj_block_solid)){
	// Jump
	if(state != player_states.INAIR) && (key_jump){
		vsp = jumpspd;
		state = player_states.INAIR;
		return;
	}
	
	if(state != player_states.MOVE && hsp != 0){
		state = player_states.MOVE;
		return;
	}
}

if(key_attack){
	state = player_states.ATTACK;
	return;
}

if(hsp == 0 && place_meeting(x, y + 1, obj_block_solid)){
	state = player_states.IDLE;
	return;
}