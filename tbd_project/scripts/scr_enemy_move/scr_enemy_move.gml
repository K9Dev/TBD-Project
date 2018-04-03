///scr_move();

// Horizontal collision
if(place_meeting(x+hsp, y, obj_block_solid)){
	
	while(!place_meeting(x+sign(hsp), y, obj_block_solid)){
		x += sign(hsp);	
	}
	hsp = hsp * -1;
	
	//log("Hsp = " + string(hsp));
}

x += hsp;

//log("X = " + string(x));

// Vertical collision
if(place_meeting(x, y+vsp, obj_block_solid)){
	
	while(!place_meeting(x, y+sign(vsp), obj_block_solid)){
		y += sign(vsp);	
	}
	
	vsp = 0;
	inAir = false;
}

y += vsp;