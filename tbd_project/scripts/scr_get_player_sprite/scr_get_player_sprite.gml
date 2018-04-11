
var state = argument0;

switch(state){
	case player_states.IDLE:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Player_Idle;
		//}
		
	break;
	
	case player_states.MOVE:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Player_Move;
		//}
		
	break;
	
	case player_states.RUN:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Player_Run;
		//}
		
	break;
	
	case player_states.INAIR:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Player_Air;
		//}
		
	break;
}

