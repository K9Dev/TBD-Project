grav = 0.2;
gravT = 0.2;

startdelay = true;

vsp = 15;
//hsp = random(5);
if(global.enemyTowerDead){
	hsp = random_range(2, 3);
	startdelay = true;
}else{
	hsp = random_range(3, 4);
	startdelay = false;
}


image_xscale = 0.5;
image_yscale = 0.5;

var rndmDir = random(180);
var rndmDirValid = false;

while(!rndmDirValid){
	if(rndmDir >=50 && rndmDir <= 80){
		rndmDirValid = true;
	}else if(rndmDir >= 99 && rndmDir <= 120){
		rndmDirValid = true;
	}else{
		rndmDir = random(180);
	}
}

direction = rndmDir;

speed = hsp;

depth = -1000;

log("Dir Set:" + string(rndmDir));

alarm[0] = room_speed * 0.2;

/*direction = random(360);
speed = random_range(0.1, 0.5);*/