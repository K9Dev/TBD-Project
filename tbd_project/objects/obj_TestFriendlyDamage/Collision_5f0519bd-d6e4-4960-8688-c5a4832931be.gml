/// @description

if(!global.gameover){
	if(image_index >= 2){
		other.enemy_hp -= damage;	
		other.flash = 3;
		//log("Player HP: " + string(other.hp));
	}
}