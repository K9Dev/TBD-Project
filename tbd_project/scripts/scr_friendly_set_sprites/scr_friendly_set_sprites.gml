// Animation

switch(state){
	
	case friendly_states.INAIR:
		//scr_get_Friendly_sprite(enemy_state.inair);
		sprite_index = spr_Test_Friendly_Air;
	break; 
	
	case friendly_states.MOVE:
		//scr_get_Friendly_sprite(enemy_state.move);
		sprite_index = spr_Test_Friendly_Move;
	break;
	
	case friendly_states.IDLE:
		//scr_get_Friendly_sprite(enemy_state.idle);
		sprite_index = spr_Test_Friendly_Idle;
	break;
	
	case friendly_states.ATTACK:
		//scr_get_Friendly_sprite(enemy_state.idle);
		sprite_index = spr_Test_Friendly_Idle;
	break;
	
	case friendly_states.DEAD:
		//scr_get_Friendly_sprite(enemy_state.dead);
		sprite_index = spr_Test_Friendly_Dead;
	break; 
	
}

if(hsp != 0){
	image_xscale = sign(hsp);
}

depth = -100;