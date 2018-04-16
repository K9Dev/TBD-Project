
with(global.playerObj){
	coins ++;
}

with(instance_create_layer(x, y, "Loot", obj_coins_collect)){
	direction = 90;
}

instance_destroy();
