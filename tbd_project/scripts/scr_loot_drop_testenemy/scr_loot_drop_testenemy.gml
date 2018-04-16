var loot = argument0;
var lootDrop = argument1;

var lootDropped = false;

// Chance for Rare Drop
if(lootDrop <= 15){
	
	var lootAmount = random_range(3, 6);
	
	for(var i = 0; i < lootAmount; i++){
		instance_create_layer(x,y,"Loot", loot);
	}
	
	lootDropped = true;
}

if(!lootDropped){
	
	var lootAmount = random_range(0, 2);
	
	if(lootAmount == 0){
		return;
	}
	
	for(var i = 0; i < lootAmount; i++){
		instance_create_layer(x,y,"Loot", loot);
	}
	
	lootDropped = true;
}