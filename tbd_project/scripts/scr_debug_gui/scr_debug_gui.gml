
	draw_text(200, 500,"Spd: " + string(movespd));
	draw_text(200, 530,"Jumpspd: " + string(vsp));
	draw_text(200, 560,"Air Jumps: " + string(airjump));
	//draw_text(200, 590,"Can Dash: " + string(alarm[1]));
	draw_text(200, 620,"Player Sprite: " + string(sprite_index));

	//draw_text(200, 650,"Player Sprites: Idle = " + string(spr_Player_Idle) + ", Move = " + string(spr_Player_Move));
	//draw_text(200, 670,"Player Sprites: Run = " + string(spr_Player_Run) + ", Air = " + string(spr_Player_Air));
	
	draw_text(200, 670,"Pressed Shift:  = " + string(key_shift));
	draw_text(200, 690,"Key Right:  = " + string(key_right));
	draw_text(200, 710,"Key Left:  = " + string(key_left));
	draw_text(200, 730,"Key R Released:  = " + string(key_right_released));
	draw_text(200, 750,"Key L Released:  = " + string(key_left_released));
	
	draw_text(200, 770,"Player ImageXScale: " + string(image_xscale));
	draw_text(200, 790,"Player Move:  = " + string(move));
	
	draw_text(200, 820,"InAir:  = " + string(inAir));
