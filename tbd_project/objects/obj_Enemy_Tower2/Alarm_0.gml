//log("Alarm 0 start");
//log("Loot not droped yet, LootAmount: " + string(lootAmount) + "/ LootCount: " + string(lootCount));
scr_loot_drop(self);

var val = irandom_range(1, 1)/10;

//log("Set alarm new to: " + string(val));
alarm[0] = val * room_speed;