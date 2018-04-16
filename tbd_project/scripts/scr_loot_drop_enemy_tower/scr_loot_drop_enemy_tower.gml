var loot = argument0;
var lootDrop = argument1;
//log("entered Tower Loot");
//if(!lootDroped){
// Chance for Rare Drop
if(lootDrop <= 15){
	log("Loot chance 15");
	if(lootAmount == 0){
		lootAmount = irandom_range(35, 87);
		log("(15) set loot amount");
	}
		
	if(lootCount < lootAmount){
		//with(instance_create_layer(x,y,"Loot", loot)){
		//	hsp = irandom_range(5,7);
		//	direction = 90;
		//}
		instance_create_layer(x,y,"Loot", loot);
		lootCount++;
			
		log("(15)LootAmount: " + string(lootAmount) + "/ LootCount: " + string(lootCount));
			
	}
	
	if(lootCount == lootAmount){
		lootDroped = true;
		log("Loot Droped = True");
	}
		
	return;
}
//}

//if(!lootDroped){
	
if(lootAmount == 0){
	lootAmount = irandom_range(20, 35);
	log("Set loot amount");
}
	
if(lootCount < lootAmount){
	//with(instance_create_layer(x,y,"Loot", loot)){
	//	hsp = irandom_range(5,7);
	//	direction = 90;
	//}
	instance_create_layer(x,y,"Loot", loot);
	
	lootCount++;
	log("LootAmount: " + string(lootAmount) + "/ LootCount: " + string(lootCount));
	//alarm[0] = irandom_range(0.3, 0.7);
}
	
if(lootCount == lootAmount){
	lootDroped = true;
	log("Loot Droped = True");
}
//}
