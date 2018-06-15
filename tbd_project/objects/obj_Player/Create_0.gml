/// @description Insert description here

log("Player Created");

global.playerObj = self;

gameover = false;

controller = false;

gamepad_set_axis_deadzone(0, 0.2);

// Movement Vars
hsp = 0;
vsp = 0;


maxHp = obj_Player_Stats.HP;

hp = maxHp;

maxVsp = 15;

grav = 0.8;

flash = 0;

isHit = false;

resetMovespd = 5.5;
movespd = 5.5;
runspd = 7.5;
jumpspd = -12;
airjumpspd = -10;

inAir = false;

airjump = 1;

canjump = true;
candash = true;
canattack = true;

attacking = true;


state = player_states.IDLE;
prestate = state;

resetAlarm = false;
buffed = false;
fire_buff = false;

//Inventory
coins = 0;
