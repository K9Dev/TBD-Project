
with(global.playerObj){
	if(buffed){
		resetAlarm = true;
	}else{
		fire_buff = true;
	}
}

with(instance_create_layer(x, y, "Loot", obj_item_firestone_collect)){
	direction = 90;
}

instance_destroy();
