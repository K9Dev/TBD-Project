createLoot = true;
lootDroped = false;

global.enemyTowerDead = true;

lootAmount = 0;
lootCount = 0;

lootTable = global.enemy_tower_loot_table;	
lootPos = random(array_length_1d(lootTable));
		
if(lootPos >= 0){
	lootPos--;
}
	
loot = lootTable[lootPos];
lootDrop = random(50);

alarm[0] = 0.1 * room_speed;

obj_Player_Stats.playerExp += 80;