if(state == player_states.DEAD){
	sprite_index = spr_Player_Dead;
}

if(state == player_states.INAIR){
	sprite_index = spr_Player_Air;
}

if(state == player_states.MOVE){
	sprite_index = spr_Player_Move;
}

if(state == player_states.IDLE){
	sprite_index = spr_Player_Idle;
}

if(state == player_states.ATTACK){
	
	if(hsp == 0){
		sprite_index = spr_Player_Idle;
	}else{
		sprite_index = spr_Player_Move;
	}
}

if(state == player_states.RUN){
	sprite_index = spr_Player_Run;
}
//if(state == player_states.INAIR){

//	//sprite_index = spr_Player_Air;
//	//scr_get_player_sprite(player_states.INAIR);
	
//	sprite_index = spr_Player_Air;
//	//log("Set Air Sprite");
	
//	image_speed = 0;
	
//	if(sign(vsp) == 1){
//		image_index = 1;
//		//log("Player in air down...(Index: " + string(image_index) +" (VSP: " + string(sign(vsp)) + ")");
//	}else{
//		image_index = 0;
//		//log("Player in air up...(Index: " + string(image_index) +" (VSP: " + string(sign(vsp)) + ")");
//	}
//}else{

//	image_speed = 1;
	
//	if(hsp == 0){
//		scr_get_player_sprite(player_states.IDLE);
//		//log("Set Idle Sprite");
//	}else{
//		scr_get_player_sprite(player_states.MOVE);
//	}
//}

//if(key_shift){
//	scr_get_player_sprite(player_states.RUN);
//}

if(hsp != 0){
	image_xscale = sign(hsp);
}

depth = -100;