
if(spawnCount < spawnAmount){
	instance_create_depth(x, y, -1, obj_TestEnemy);
	
	spawnCount++;
	
	alarm[0] = spawnRate;
}