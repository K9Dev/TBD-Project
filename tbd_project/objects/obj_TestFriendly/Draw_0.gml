draw_self();

// Flash white
if(flash > 0 && !dead){

	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

var _hp = (friendly_hp / friendly_max_hp) * 100;

draw_healthbar(x - 11, y - 35, x + 11, y - 40, _hp, c_black, c_red, c_green,0, true, false)
