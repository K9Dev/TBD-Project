var dir = 0;
var flipped = 0;

if(controller){
	var controllerH = gamepad_axis_value(0, gp_axisrh);
	var controllerV	= gamepad_axis_value(0, gp_axisrv);
	
	dir = scr_get_dir(controllerH, controllerV);
	
	flipped = scr_get_flipped(dir);
	
}else{
	dir = point_direction(x, y, mouse_x, mouse_y);

	flipped = (mouse_x > x) *2-1;
}

flipped = image_xscale;

draw_sprite_ext(sprite_index, image_index, x, y, flipped, 1, 0, image_blend, image_alpha);

if(image_xscale == 1){
	draw_sprite_ext(spr_Gun, 0, x-4, y, 1, 1, direction, image_blend, image_alpha);
}else if(image_xscale == -1){
	draw_sprite_ext(spr_Gun, 0, x-4*-1, y, -1, 1, direction, image_blend, image_alpha);
}else{
	draw_sprite_ext(spr_Gun, 0, x-4, y, image_xscale, image_yscale, direction, image_blend, image_alpha);
}


//draw_sprite_ext(spr_Gun, 0, x-4*flipped, y, 1, flipped, dir, image_blend, image_alpha);



depth = -100; 
