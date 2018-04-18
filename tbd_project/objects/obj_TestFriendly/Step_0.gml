//scr_enemy_movement();
//scr_enemy_set_sprites();
//scr_enemy_move();

if(!global.gameover){
	scr_friendly_get_state();

	event_user(state);

	scr_friendly_move();

	scr_friendly_set_sprites();
}

if(global.levelWon){
	instance_destroy();
}