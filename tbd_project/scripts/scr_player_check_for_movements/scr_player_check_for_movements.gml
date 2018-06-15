move = 0;

// Open Character Info
if(key_character_info){
	global.characterInfoOpen = !global.characterInfoOpen;
}


if(key_left){
	move = -1;
}else if(key_left_released){
	if(key_right){
		move = 1;
	}else{
		move = 0;
	}
}

if(key_right){
	move = 1;
}else if(key_right_released){
	if(key_left){
		move = -1;
	}else{
		move = 0;
	}
}

// Set move dir and speed
hsp = move * movespd;

vsp = scr_check_max(vsp + grav, maxVsp);

// Check if on Floor and jump
if(place_meeting(x, y + 1, obj_block_solid)){
	
	//state = player_states.MOVE;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Wall Jump right
//if(!onTheFloor && place_meeting(x - 1, y, obj_block_solid) && key_right){
//	vspd = -6;
//	airjump -= 1;
	
//	//log("Walljump right..");
//}

// Wall Jump left
//if(!onTheFloor && place_meeting(x + 1, y, obj_block_solid) && key_left && !key_right){
//	vspd = -6;
//	airjump -= 1;
	
//	//log("Walljump left..");
//}
	
// Check Dash State
//if(key_dash && hspd != 0 && canDash){
//	state = player_state.dash;
	
//	// Set Move State
//	alarm[0] = room_speed / 6;
	
//	// Reset Dash Cooldown
//	alarm[1] = room_speed * 1.6;
//}


//return inAir;