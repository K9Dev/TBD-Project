/// @description Insert description here

debug = false;

controller = false;

gamepad_set_axis_deadzone(0, 0.2);

// Movement Vars
hsp = 0;
vsp = 0;

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

attack = false;

alarm[0] = room_speed * 0.2;


state = player_state.idle;
