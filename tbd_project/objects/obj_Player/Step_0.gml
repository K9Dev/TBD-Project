
if(!gameover){
	scr_get_input();

	scr_player_check_for_movements();

	scr_player_get_state();
	scr_player_set_sprites();

	event_user(state);

	scr_move();
}

