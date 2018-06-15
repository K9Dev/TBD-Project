/// @description Insert description here

// Movement Vars
hsp = 0;
vsp = 0;
grav = 0.3;
done = 0;

isDead = false;
blinked = false;

image_speed = 0;

lootTable = global.enemy_test_loot_table;	
lootPos = irandom(array_length_1d(lootTable));

log("Loot Pos = " + string(lootPos));

if(lootPos > 0){
	lootPos--;
}
	
loot = lootTable[lootPos];
lootDrop = random(100);

scr_loot_drop(self);

alarm[0] = room_speed * 2;

obj_Player_Stats.playerExp += enemy_test.experience;
	

