movespd = runspd;

if(place_meeting(x, y + 1, obj_block_solid)){
	// Jump
	if(key_jump){
		vsp = jumpspd;
		//state = player_states.INAIR;
		log("Jumped while running");
		return;
	}
}

// Double Jump
if(!place_meeting(x, y + 1, obj_block_solid)){
	if(airjump > 0){
		if(key_jump){
			log("Jumped again while running!");
			vsp = airjumpspd;
			airjump -= 1;
		}
	}
}

if(key_attack){
	//log("Key attack");
	scr_player_state_attack();
}
