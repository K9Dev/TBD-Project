/// @description Update Camera

if(global.gameover && global.playerTowerDead){
	scr_cam_follow_towerDead(global.playerTowerDeadObj, cam);
}else if(!global.playerDeath){
	scr_cam_follow_player(global.playerObj, cam);
}else{
	//log("Player Death Cam");
	scr_cam_follow_playerDead(global.playerDeathObj, cam);
}


global.camX = x;
global.camY = y;

global.camW = camera_get_view_width(view_camera[1]);
global.camH = camera_get_view_height(view_camera[1]);