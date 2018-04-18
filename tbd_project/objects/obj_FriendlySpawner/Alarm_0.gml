
if(spawnCount < spawnAmount){
	instance_create_depth(x, y, -1, obj_TestFriendly);
	
	spawnCount++;
	
	alarm[0] = spawnRate;
}