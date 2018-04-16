/// @description 
//path_start(EnemyPath, 3, path_action_restart, true);
debug = true;

// Movement Vars
walkspeed = 2;
hsp = enemy_test.movespeed;
vsp = 0;
grav = 0.5;

enemy_hp = enemy_test.hp;
enemy_max_hp = enemy_test.maxhp;

flash = 0;

dead = false;

inAir = false;

attacked = false;

hitfrom = 0;
isHit = false;

state = enemy_states.MOVE;

recoilX = enemy_test.recoilX;
recoilY = enemy_test.recoilY;

olddir = noone;
oldhsp = hsp;
oldvsp = vsp;