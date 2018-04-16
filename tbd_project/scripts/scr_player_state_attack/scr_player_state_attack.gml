
if(attacking){
	//log("Event ATTACK");
	
	if(fire_buff){
		instance_create_layer(x, y, "Enemies", obj_bullet_fire);
	}else{
		instance_create_layer(x, y, "Enemies", obj_bullet);
	}
	//log("Instance Bullet created");
	alarm[0] = room_speed * 0.2;
	attacking = false;
}