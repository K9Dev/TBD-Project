
//// Display Properties
idealWidth = 0;
idealHeight = 432;

w = display_get_width();
h = display_get_height();


aspectRatio =  w / h;

log("W: " + string(w) + " / H: " + string(h));

log("ratio: " + string(aspectRatio));

idealWidth = round(idealHeight * aspectRatio);

log("ideal width: " + string(idealWidth) + " / Height: " + string(idealHeight));

// Check for odd numbers
if(idealWidth & 1){
	idealWidth++;
}

for(var i = 1; i <= room_last; i++){
	if(room_exists(i)){
		room_set_viewport(i, 0, true, 0, 0, idealWidth, idealHeight);
		room_set_view_enabled(i, true);
	}
}

surface_resize(application_surface, idealWidth, idealHeight);

window_set_size(idealWidth, idealHeight);

room_goto_next();

