
hsp = 0;

//log("Attack State begin");
if(!attacked){
	
	var obj = target;
	
	
	//log("Friendlytarget: " + string(obj));
	var dir = point_direction(obj.x, obj.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);

	var damage = instance_create_depth(obj.x + xdir, obj.y + ydir, obj.depth, obj_TestFriendlyDamage);

	damage.creator = id;
	
	attacked = true;
	
	alarm[1] = 1 * room_speed;
	
}