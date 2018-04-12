
hsp = 0;
	
if(!attacked){
	var dir = point_direction(obj_Player.x, obj_Player.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);

	var damage = instance_create_depth(obj_Player.x + xdir, obj_Player.y + ydir, obj_Player.depth, obj_EnemyTest_Damage);

	damage.creator = id;
	
	attacked = true;
	
	alarm[1] = 1 * room_speed;
	
}