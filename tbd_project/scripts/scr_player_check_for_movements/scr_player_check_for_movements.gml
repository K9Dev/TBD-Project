// Run during SHIFT
if(key_shift){
	movespd = runspd;
	state = player_state.run;
}else{
	movespd = resetMovespd;
	state = player_state.move;
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

vsp += grav;

// Check if on Floor and jump
if(place_meeting(x, y + 1, obj_block_ground)){
	
	inAir = false;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

if(place_meeting(x, y + 1, obj_block_wall)){
	
	inAir = false;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Wall Jump right
//if(!onTheFloor && place_meeting(x - 1, y, obj_block_wall) && key_right){
//	vspd = -6;
//	airjump -= 1;
	
//	//log("Walljump right..");
//}

// Wall Jump left
//if(!onTheFloor && place_meeting(x + 1, y, obj_block_wall) && key_left && !key_right){
//	vspd = -6;
//	airjump -= 1;
	
//	//log("Walljump left..");
//}

// Double Jump
if(inAir && airjump > 0){
	if(key_jump){
		vsp = airjumpspd;
		airjump -= 1;
	}
}

// Jump
if(!inAir) && (key_jump){
	vsp = jumpspd;
	inAir = true;
	state = player_state.inair;
}

// Check Dash State
//if(key_dash && hspd != 0 && canDash){
//	state = player_state.dash;
	
//	// Set Move State
//	alarm[0] = room_speed / 6;
	
//	// Reset Dash Cooldown
//	alarm[1] = room_speed * 1.6;
//}

// Check Attack State
//if(key_attack && canAttack){
//	state = player_state.attack;
//	canAttack = false;
//}

return inAir;