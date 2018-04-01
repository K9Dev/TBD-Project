
// Set move dir and speed
//hsp = movespd;

hsp = 0;

vsp += grav;

if(!place_meeting(x, y + 1, obj_block_solid)){
	inAir = true;
}