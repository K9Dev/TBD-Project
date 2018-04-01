/// @description Insert description here

debug = true;

// Movement Vars
hsp = 0;
vsp = 0;
grav = 0.5;

resetMovespd = 8;
movespd = 8;
runspd = 12;
jumpspd = -20;
airjumpspd = -25;

inAir = false;

airjump = 1;

canjump = true;
candash = true;
canattack = true;

state = enemy_state.idle;
