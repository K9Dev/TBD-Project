
//Level Up!
playerLvl += 1;

obj_Player_Stats.HP += round((1.5 * playerLvl) + 25);
obj_Player_Stats.STR += round(1.5 * playerLvl);
obj_Player_Stats.DEF += round(1.3 * playerLvl);

if(playerLvl mod 2 == 0){
	// Every even lvl
	obj_Player_Stats.critChance += 1.5;
	obj_Player_Stats.luck += 1.5;
}else{
	// Every odd lvl
	obj_Player_Stats.critMultiplier += 0.1;
}

if(playerLvl == 1){
	var newMaxExp = round(playerMaxExp * (0.7 * playerLvl));
	
	newMaxExp += playerMaxExp;
}else{
	var newMaxExp = round(playerMaxExp * (0.7 * playerLvl));
}

playerExp = playerExp - playerMaxExp;

playerMaxExp = newMaxExp;

