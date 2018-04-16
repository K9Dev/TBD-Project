
log("Player Dead State entered");

with(instance_create_depth(x, y, depth, obj_PlayerDead)){
	direction = 180;
	hsp = lengthdir_x(4, direction);
	vsp = lengthdir_y(5,direction)-2;
	
	image_xscale = -1;
	//if(sign(hsp) != 0) image_xscale = sign(hsp);
}

log("Player is death.");
global.gameover = true;
global.playerDeath = true;
	
instance_destroy();

