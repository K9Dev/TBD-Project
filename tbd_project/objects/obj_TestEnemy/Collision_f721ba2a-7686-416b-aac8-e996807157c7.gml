
//with(obj_bullet){
	enemy_hp -= other.bulletdmg;
	
	flash = 3;
	
	hitfrom = other.direction;
	
	
	direction = hitfrom;
	hsp = lengthdir_x(recoilX,direction);
	vsp = lengthdir_y(recoilY,direction)-3;
	
	x += hsp;
	y += vsp;
	
	isHit = true;
	
	direction = olddir;
	
	alarm[0] = 0.2 * room_speed;
	
	log("Enemy HP: " + string(enemy_hp));
//}
