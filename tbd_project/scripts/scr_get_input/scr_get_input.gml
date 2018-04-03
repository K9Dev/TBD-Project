// Get Input

//Check Moves
key_right = keyboard_check(ord("D")); 
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(ord("Q"));
key_shift = keyboard_check(vk_shift);
key_attack = mouse_check_button(mb_left);
key_attack_pressed = mouse_check_button(mb_left);

if(key_left || key_right || key_jump || key_dash || key_shift || key_attack || key_attack_pressed){
	controller = false;
}

//key_change_weapon = keyboard_check_pressed(ord("F"));

//key_inv = keyboard_check_pressed(ord("I"));

if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
	
	if(gamepad_axis_value(0, gp_axislh) < 0){
		key_left = 1;
	}else{
		key_left = 0;
	}
	
	if(gamepad_axis_value(0, gp_axislh) > 0){
		key_right = 1;
	}else{
		key_right = 0;
	}
	
	controller = true;
}

if(gamepad_button_check(0, gp_shoulderlb)){
	key_shift = 1;
	controller = true;
}


key_right_released = keyboard_check_released(ord("D"));
key_left_released = keyboard_check_released(ord("A"));


if(gamepad_button_check_pressed(0, gp_face1)){
	key_jump = 1;
	controller = true;
}

if(gamepad_button_check(0, gp_shoulderrb)){
	key_attack = 1;
	controller = true;
}
