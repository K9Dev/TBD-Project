// Animation
// Air
if(inAir){

	//sprite_index = spr_Player_Air;
	scr_get_player_sprite(player_state.inair);
	//log("Set Air Sprite");
	
	image_speed = 0;
	
	if(sign(vsp) == 1){
		image_index = 1;
		log("Player in air down...(Index: " + string(image_index) +" (VSP: " + string(sign(vsp)) + ")");
	}else{
		image_index = 0;
		log("Player in air up...(Index: " + string(image_index) +" (VSP: " + string(sign(vsp)) + ")");
	}
}else{

	image_speed = 15;
	
	if(hsp == 0){
		scr_get_player_sprite(player_state.idle);
		//log("Set Idle Sprite");
	}else{
		scr_get_player_sprite(player_state.move);
	}
	
	
}

if(key_shift){

	scr_get_player_sprite(player_state.run);
}

if(hsp != 0){
	image_xscale = sign(hsp);
}

depth = -100;