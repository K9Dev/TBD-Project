///scr_move();

// Horizontal collision
if(place_meeting(x+hsp, y, obj_block_wall)){
	
	while(!place_meeting(x+sign(hsp), y, obj_block_wall)){
		x += sign(hsp);	
	}
	hsp = 0;
}
x += hsp;

// Vertical collision
if(place_meeting(x, y+vsp, obj_block_ground)){
	
	while(!place_meeting(x, y+sign(vsp), obj_block_ground)){
		y += sign(vsp);	
	}
	
	vsp = 0;
	inAir = false;
}
//y += vsp;

if(place_meeting(x, y+vsp, obj_block_wall)){
	
	while(!place_meeting(x, y+sign(vsp), obj_block_wall)){
		y += sign(vsp);	
	}
	
	vsp = 0;
	inAir = false;
}
y += vsp;