// Animation
// Air
if(inAir){

	//sprite_index = spr_Player_Air;
	scr_get_enemy_sprite(enemy_state.inair);
	//log("Set Air Sprite");
	
	image_speed = 0;
	
	if(sign(vsp) > 0){
		image_index = 1;
	}else{
		image_index = 0;
	}
}else{

	image_speed = 15;
	
	if(hsp == 0){
		scr_get_enemy_sprite(enemy_state.idle);
		//log("Set Idle Sprite");
	}else{
		scr_get_enemy_sprite(enemy_state.move);
	}
	
	
}

if(hsp != 0){
	image_xscale = sign(hsp);
}

depth = -100;