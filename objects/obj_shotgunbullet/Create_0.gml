didit = 0
if obj_player.character = "V"
{
	sprite_index = spr_cheesebulletend
	alarm[2] = 10
	if global.noisejetpack
	{

	}
}
if image_index == spr_cheesebulletend
	image_speed = 0.35
else 
	image_speed = 0.5
playerid = ((!(place_meeting(x, y, obj_player))) ? instance_nearest(x, y, obj_player) : instance_place(x, y, obj_player))
image_xscale = playerid.xscale
is_solid = 1
if image_index == spr_cheesebulletend
{
	spd = 4
}
else
	spd = 25
spdh = 0
pistol = 0
minigun = 0
shotgun = 0
brick = false
brickid = obj_null
if image_index == spr_cheesebulletend
{
	repeat 2
	create_debris(x, y, spr_slimedebris)
}