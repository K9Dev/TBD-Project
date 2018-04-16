
var projectile = argument0;

var hitFrom = argument1;

var hitX = argument2;
var hitY = argument3;

var myself = argument4;

if(global.debugmode){
	log("myself: " + string(myself));
	log("projectile: " + string(projectile));
	log("hitFrom: " + string(hitFrom));
	log("hitX: " + string(hitX));
	log("hitY: " + string(hitY));
}

var isEnemyTower = false;
var isEnemyTest = false;

switch(myself.object_index){
	case obj_Enemy_Tower:
		isEnemyTower = true;
		log("Enemy Tower Hit!");
	break;
	
	case obj_TestEnemy:
		isEnemyTest = true;
		log("Test Enemy Hit!");
	break;
}

switch(projectile){
	case obj_bullet:
	
		if(isEnemyTest){
			instance_create_depth(hitX, hitY, depth, obj_bullet_impact_enemy);
			log("Created Impact_Enemy");
		}
		
		if(isEnemyTower){
			instance_create_depth(hitX, hitY, depth, obj_bullet_impact_tower);
			log("Created Impact_Tower");
		}
		
	break;
	
}