// Animation

switch(state){
	
	case enemy_states.INAIR:
		scr_get_enemy_sprite(enemy_state.inair);
	break; 
	
	case enemy_states.MOVE:
		scr_get_enemy_sprite(enemy_state.move);
	break;
	
	case enemy_states.IDLE:
		scr_get_enemy_sprite(enemy_state.idle);
	break;
	
	case enemy_states.ATTACK:
		scr_get_enemy_sprite(enemy_state.idle);
	break;
	
	case enemy_states.DEAD:
		scr_get_enemy_sprite(enemy_state.dead);
	break; 
	
}

if(hsp != 0){
	image_xscale = sign(hsp);
}

depth = -100;