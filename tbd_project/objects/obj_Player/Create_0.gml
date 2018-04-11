/// @description Insert description here

debug = true;

controller = false;

gamepad_set_axis_deadzone(0, 0.2);

// Movement Vars
hsp = 0;
vsp = 0;

hp = 100;

maxVsp = 15;

grav = 0.8;

resetMovespd = 6;
movespd = 6;
runspd = 8;
jumpspd = -14;
airjumpspd = -10;

inAir = false;

airjump = 1;

canjump = true;
candash = true;
canattack = true;

attacking = true;


state = player_states.MOVE;
prestate = state;