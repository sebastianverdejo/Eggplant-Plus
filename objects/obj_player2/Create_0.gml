scr_initinput2();
depth = -6;
x = -10000;
y = -10000;
if global.coop
{
	visible = true;
    x = obj_player1.x
    y = obj_player1.y
	state = states.normal
}
else if !global.coop
{
	visible = false;
	obj_player1.spotlight = true;
	x = -10000;
	y = -10000;
	state = states.titlescreen;
	if (instance_exists(obj_coopflag))
		instance_destroy(obj_coopflag);
	if (instance_exists(obj_cooppointer))
		instance_destroy(obj_cooppointer);
}
event_inherited();