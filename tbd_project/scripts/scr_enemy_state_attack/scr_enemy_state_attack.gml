
hsp = 0;

//log("Attack State begin");
if(!attacked){
	
	var obj = target;
	
	
	log("Enemytarget: " + string(obj));
	var dir = point_direction(obj.x, obj.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(0.5, dir);

	var damage = instance_create_depth(obj.x + xdir, obj.y + ydir, obj.depth, obj_EnemyTest_Damage);

	damage.creator = id;
	
	attacked = true;
	
	alarm[1] = 1.5 * room_speed;
	
}