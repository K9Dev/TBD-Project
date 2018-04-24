// Animation

switch(state){
	
	case enemy_states.INAIR:
		//scr_get_enemy_sprite(enemy_state.inair);
		sprite_index = spr_Test_Enemy_Air;
	break; 
	
	case enemy_states.MOVE:
		//scr_get_enemy_sprite(enemy_state.move);
		sprite_index = spr_Test_Enemy_Move;
	break;
	
	case enemy_states.IDLE:
		//scr_get_enemy_sprite(enemy_state.idle);
		sprite_index = spr_Test_Enemy_Idle;
	break;
	
	case enemy_states.ATTACK:
		//scr_get_enemy_sprite(enemy_state.idle);
		sprite_index = spr_Test_Enemy_Idle;
	break;
	
	case enemy_states.DEAD:
		//scr_get_enemy_sprite(enemy_state.dead);
		sprite_index = spr_Test_Enemy_Dead;
	break; 
	
}

if(hsp != 0 && !isHit){
	image_xscale = sign(hsp);
}

depth = -100;