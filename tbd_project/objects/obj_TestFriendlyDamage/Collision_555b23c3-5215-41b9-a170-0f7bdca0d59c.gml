/// @description

if(!global.gameover){
	if(image_index >= 2){
		
		var checkHp = other.hp - damage;
		
		if(checkHp <= 0){
			global.enemyTowerDead = true;	
		}
		
		other.hp -= damage;	
		//other.flash = 3;
		log("Player Tower HP: " + string(other.hp));
	}
}