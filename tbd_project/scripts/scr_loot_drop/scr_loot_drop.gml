var obj = argument0;

log("Object for Loot: " + string(obj.object_index));


switch(obj.object_index){
	
	case obj_TestEnemyDead:
		scr_loot_drop_testenemy(loot, lootDrop);
	break;
	
	case obj_Enemy_Tower2:
		scr_loot_drop_enemy_tower(loot, lootDrop);
	break;
}
	

//instance_create_layer(x,y,"Player", obj_coins_pickup);
//instance_destroy();