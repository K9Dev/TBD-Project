
//with(obj_bullet){

	friendly_hp = scr_get_hp_after_hit(other.damage, friendly_hp);
	//enemy_hp -= other.dmg;
	
	//log("Enemy HP: " + string(enemy_hp));
	
	flash = 3;
	
	hitfrom = other.direction;
	
	
	direction = hitfrom;
	hsp = lengthdir_x(recoilX,direction);
	vsp = lengthdir_y(recoilY,direction)-1;
	
	hsp = lerp(hsp, 0, .1);
	vsp = lerp(vsp, 0, .1);
	
	x += hsp;
	y += vsp;
	
	isHit = true;
	
	direction = olddir;
	
	alarm[0] = 0.2 * room_speed;
	
	//log("Enemy HP: " + string(enemy_hp));
//}
