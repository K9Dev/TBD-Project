
var windowWidth = window_get_width();
var windowHeight = window_get_height();

//log("Window W: " + string(windowWidth));
//log("Window H: " + string(windowHeight));

	draw_sprite_ext(spr_loot_coins, 0, windowWidth-220, 110, 2, 2, 0, c_white, image_alpha);
	
	draw_text(windowWidth - 200, 100," X " + string(coins));
	
	//draw_text(200, 230,"Jumpspd: " + string(vsp));
	//draw_text(200, 260,"Air Jumps: " + string(airjump));
	////draw_text(200, 590,"Can Dash: " + string(alarm[1]));
	//draw_text(200, 320,"Player Sprite: " + string(sprite_index));

	////draw_text(200, 650,"Player Sprites: Idle = " + string(spr_Player_Idle) + ", Move = " + string(spr_Player_Move));
	////draw_text(200, 670,"Player Sprites: Run = " + string(spr_Player_Run) + ", Air = " + string(spr_Player_Air));
	
	//draw_text(200, 370,"HP:  = " + string(hp));
	////draw_text(200, 670,"Pressed Shift:  = " + string(key_shift));
	//draw_text(200, 390,"Key Right:  = " + string(key_right));
	//draw_text(200, 410,"Key Left:  = " + string(key_left));
	//draw_text(200, 430,"Key R Released:  = " + string(key_right_released));
	//draw_text(200, 450,"Key L Released:  = " + string(key_left_released));
	
	//draw_text(200, 470,"Player ImageXScale: " + string(image_xscale));
	//draw_text(200, 490,"Player Move:  = " + string(move));
	
	//draw_text(200, 520,"Player State:  = " + string(state));
