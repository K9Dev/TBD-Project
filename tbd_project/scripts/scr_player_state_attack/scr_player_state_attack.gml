
if(attacking){
	//log("Event ATTACK");
	instance_create_layer(x, y, "Enemies", obj_bullet);
	//log("Instance Bullet created");
	alarm[0] = room_speed * 0.2;
	attacking = false;
}