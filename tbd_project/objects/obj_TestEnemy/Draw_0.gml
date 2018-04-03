draw_self();

// Flash white
if(flash > 0 && !dead){

	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

