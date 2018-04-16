//scr_enemy_movement();
//scr_enemy_set_sprites();
//scr_enemy_move();

if(!global.gameover){
	scr_enemy_get_state();

	event_user(state);

	scr_enemy_move();

	scr_enemy_set_sprites();
}