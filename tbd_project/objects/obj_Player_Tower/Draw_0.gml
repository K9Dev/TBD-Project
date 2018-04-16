draw_self();

// Flash
if(flash > 0){
	flash--;
	shader_set(sh_red2);
	draw_self();
	shader_reset();
}