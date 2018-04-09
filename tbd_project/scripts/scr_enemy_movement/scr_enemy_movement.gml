
// Set move dir and speed
//hsp = movespd;

if(enemy_hp <= 0){
	dead = true;
}

vsp += grav;

if(!place_meeting(x, y + 1, obj_block_solid)){
	inAir = true;
}

//if(place_meeting(x-10, y, obj_Player)){
//	state = enemy_state.attack;
//}

//if(place_meeting(x-10, y, obj_Player)){
//	state = enemy_state.attack;
//}