// Enemy Config

enum enemy_test{
	hp = 56,
	maxhp = 56,
	movespeed = -2,
	spawnUnits = 0,
	recoilX = 6,
	recoilY = 2,
	minDmg = 1,
	maxDmg = 3
}

enum enemy_states{
	MOVE = 0,
	INAIR = 1,
	ATTACK = 2,
	IDLE = 3,
	DEAD = 4
}