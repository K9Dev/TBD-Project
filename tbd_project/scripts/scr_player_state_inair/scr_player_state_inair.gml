if(isHit){
	return;
}

// Get Air Sprite
scr_get_enemy_sprite(enemy_state.inair);

//log("Set Air Sprite");
	
image_speed = 0;
	
if(sign(vsp) > 0){
	image_index = 1;
}else{
	image_index = 0;
}