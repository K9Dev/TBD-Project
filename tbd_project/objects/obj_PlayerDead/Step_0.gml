
if(done == 0){
	
	vsp += grav;
	// Horizontal collision
	if(place_meeting(x+hsp, y, obj_block_solid)){
	
		while(!place_meeting(x+sign(hsp), y, obj_block_solid)){
			x += sign(hsp);	
		}
		hsp = 0;
	}

	x += hsp;

	// Vertical collision
	if(place_meeting(x, y+vsp, obj_block_solid)){
		
		if(vsp > 0){
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x, y+sign(vsp), obj_block_solid)){
			y += sign(vsp);	
		}
	
		vsp = 0;
	}

	y += vsp;
	
	
}
