
var state = argument0;

switch(state){
	case enemy_state.idle:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Test_Enemy_Idle;
		//}
		
	break;
	
	case enemy_state.move:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Test_Enemy_Move;
		//}
		
	break;
	
	case enemy_state.inair:
		//if(has_weapon){
		//	scr_draw_player_with_weapons(current_weapon, state);
		//}else{
			sprite_index = spr_Test_Enemy_Air;
		//}
		
	break;
}

