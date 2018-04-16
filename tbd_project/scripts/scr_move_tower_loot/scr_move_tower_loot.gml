///scr_move();


if(startdelay){
	vsp -= gravT;
	//x += hsp;
	//log("Start delay..");
}else{
	vsp += gravT;
}

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
	
	while(!place_meeting(x, y+sign(vsp), obj_block_solid)){
		y += sign(vsp);	
	}
	
	vsp = 0;
}

y += vsp;

if(vsp == 0){
	
	//log("VSP 0");
	hsp = 0;
	
	if(speed > 0){
		speed -= 0.5;
	}
	
	if(speed <= 0){
		speed = 0;
	}
}
