//vsp = jumpspd;

// Double Jump
if(!place_meeting(x, y + 1, obj_block_solid)){
	if(airjump > 0){
		if(key_jump){
			log("Jumped again!");
			vsp = airjumpspd;
			airjump -= 1;
		}
	}
}
//log("Set Air Sprite");
//scr_player_set_sprites(state);
	
image_speed = 0;
	
if(sign(vsp) > 0){
	image_index = 1;
}else{
	image_index = 0;
}