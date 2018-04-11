
// Run during SHIFT
if(key_shift){
	movespd = runspd;
	prestate = state;
	state = player_states.RUN;
}else{
	movespd = resetMovespd;
//	state = player_states.MOVE;
}

move = 0;

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


// Double Jump
if(state == player_states.INAIR && airjump > 0){
	if(key_jump){
		vsp = airjumpspd;
		airjump -= 1;
	}
}

// Jump
if(state != player_states.INAIR) && (key_jump){
	vsp = jumpspd;
	prestate = state;
	state = player_states.INAIR;
}


if(key_attack){
	//log("Player State changed to ATTACK");
	//prestate = state;
	//state = player_states.ATTACK;
	if(attacking){
		//log("Event ATTACK");
		instance_create_layer(x, y, "Enemies", obj_bullet);
		//log("Instance Bullet created");
		alarm[0] = room_speed * 0.2;
		attacking = false;
	}
	
}


	
// Check Dash State
//if(key_dash && hspd != 0 && canDash){
//	state = player_state.dash;
	
//	// Set Move State
//	alarm[0] = room_speed / 6;
	
//	// Reset Dash Cooldown
//	alarm[1] = room_speed * 1.6;
//}


//return inAir;