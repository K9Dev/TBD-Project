/// @description 
//path_start(EnemyPath, 3, path_action_restart, true);
debug = true;

// Movement Vars
walkspeed = 2;
hsp = friendly_test.movespeed;
vsp = 0;
grav = 0.5;

friendly_hp = friendly_test.hp;
friendly_max_hp = friendly_test.maxhp;

flash = 0;

dead = false;

inAir = false;

attacked = false;

hitfrom = 0;
isHit = false;

state = friendly_states.MOVE;

recoilX = friendly_test.recoilX;
recoilY = friendly_test.recoilY;

olddir = noone;
oldhsp = hsp;
oldvsp = vsp;