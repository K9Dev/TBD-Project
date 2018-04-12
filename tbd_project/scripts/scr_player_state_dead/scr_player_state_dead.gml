dead = false
log("Enemy Dead State entered");

with(instance_create_depth(x, y, depth, obj_TestEnemyDead)){
	direction = other.hitfrom;
	hsp = lengthdir_x(3, direction);
	vsp = lengthdir_y(3,direction)-2;
		
	if(sign(hsp) != 0) image_xscale = sign(hsp);
}
	
instance_destroy();
log("Enemy destroyed");

//Loot code?