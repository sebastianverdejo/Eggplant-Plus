scr_initenemy();
patrolling = false;
patrolmax = 100;
spawnreset = 200;
targetplayer = -4;
threshold_x = 400;
threshold_y = 60;
attackmode = 2;
nextattack = 0;
content = obj_cheeseslime;
spr_content_dead = spr_slimedead;
ram_count = 0;
ram_max = 30;
ram_spd = 0;
ram_spd_max = 10;
accel = 0.2;
inv_timer = 0;
inv_max = 0;
can_flash = false;
can_flash_count = 0;
flash_count = 0;
flash_max = 5;
slide_buffer = 0;
groundpound = false;
bumpable = false;
stompable = false;
killbyenemy = false;
instantkillable = false;
stunnable = false;
parryable = false;
grav = 0.5;
hsp = 0;
vsp = 0;
state = states.idle;
stunned = 0;
alarm[0] = 150;
roaming = true;
collectdrop = 5;
flying = false;
straightthrow = false;
cigar = false;
cigarcreate = false;
stomped = false;
shot = false;
reset = false;
hp = 8;
hitboxcreate = false;
grounded = true;
idlespr = spr_tank_walk;
stunspr = spr_tank_stun;
stunfallspr = spr_tank_stun;
walkspr = spr_tank_walk;
grabbedspr = spr_tank_stun;
scaredspr = spr_tank_stun;
turnspr = spr_tank_turn;
sprite_index = idlespr;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_tank_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 1;
spr_palette = palette_forknight;
grabbedby = 0;
stuntouchbuffer = 0;
forcespawn = false;