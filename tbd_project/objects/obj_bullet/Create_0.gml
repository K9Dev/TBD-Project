dir = direction;

// Move to mouse position
speed = 25;

//if(obj_Player.controller){
//	var controllerH = gamepad_axis_value(0, gp_axisrh);
//	var controllerV	= gamepad_axis_value(0, gp_axisrv);
	
//	if(abs(controllerH) > 0.2 || (abs(controllerV) > 0.2)){
//		dir = point_direction(0, 0, controllerH, controllerV);
//	}
	
//	direction = dir;
//}else{
//	direction = point_direction(x, y, mouse_x, mouse_y);
//}

if(obj_Player.image_xscale == 1){
	direction = 0;
}else if(obj_Player.image_xscale == -1){
	direction = 180;
}

dmg = irandom_range(weapon_gun.bulletdmgmin, weapon_gun.bulletdmgmax);