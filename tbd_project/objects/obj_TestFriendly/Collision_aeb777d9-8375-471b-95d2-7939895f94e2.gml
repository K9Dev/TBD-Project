//log("Friendly Collision with Enemy Tower");

if(!attacked){
	//var dir = point_direction(other.x, other.y, x, y);
	//var xdir = lengthdir_x(1, dir);
	//var ydir = lengthdir_y(1, dir);

	//var damage = instance_create_depth(other.x + xdir, other.y + ydir, other.depth, obj_EnemyTest_Damage);

	//damage.creator = id;
	//log("Atacking Player Tower");
	//attacked = true;

	//global.enemyTarget = global.playerTowerObj;
	
	state = friendly_states.ATTACK;
}
