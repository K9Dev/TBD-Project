
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


if(global.characterInfoOpen){
	
	var windowW = windowWidth-(windowWidth / 1.2);
	var windowH = windowHeight-(windowHeight / 1.3);
	
	
	draw_sprite_ext(spr_Player_Character_Info, 0, windowW, windowH, 1, 1, 0, c_white, image_alpha);
	
	draw_set_font("Consolas");
	
	var charName = string(obj_Player_Stats.playerName);
	var charRace = string(obj_Player_Stats.playerRace);
	var charClass = string(obj_Player_Stats.playerClass);
	
	var charLvl = string(obj_Player_Stats.playerLvl);
	var charExp = string(obj_Player_Stats.playerExp) + " / " + string(obj_Player_Stats.playerMaxExp);
	
	var charHp = string(obj_Player.hp) + "/" + string(obj_Player_Stats.HP);
	var charSTR = string(obj_Player_Stats.STR);
	var charDEF = string(obj_Player_Stats.DEF);
	var charCrit = string(obj_Player_Stats.critChance) + "%";
	var charCritDmg = "x" + string(obj_Player_Stats.critMultiplier);
	var charLuck = string(obj_Player_Stats.luck) + "%";
	
	draw_text_color(windowW + 63, windowH + 15, charName, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 63, windowH + 33, charRace, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 63, windowH + 51, charClass, c_lime, c_lime, c_green, c_green, image_alpha);
	
	draw_text_color(windowW + 63, windowH + 87, charLvl, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 63, windowH + 105, charExp, c_lime, c_lime, c_green, c_green, image_alpha);
	
	draw_text_color(windowW + 88, windowH + 141, charHp, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 88, windowH + 158, charSTR, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 88, windowH + 175, charDEF, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 88, windowH + 193, charCrit, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 88, windowH + 211, charCritDmg, c_lime, c_lime, c_green, c_green, image_alpha);
	draw_text_color(windowW + 88, windowH + 229, charLuck, c_lime, c_lime, c_green, c_green, image_alpha);
}