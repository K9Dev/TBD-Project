/// @description Insert description here


//path_start(EnemyPath, 3, path_action_restart, true);
debug = true;

// Movement Vars
walkspeed = -3;
hsp = enemy_test.movespeed;
vsp = 0;
grav = 0.5;

enemy_hp = enemy_test.hp;

flash = 0;

dead = false;

inAir = false;

hitfrom = 0;

state = enemy_state.idle;
