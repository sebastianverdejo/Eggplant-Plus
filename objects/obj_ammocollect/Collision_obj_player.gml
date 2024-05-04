if sprite_index == spr_bulletHUD && global.bullet < 3
{
	global.bullet += 1;
	with (instance_create(x, y, obj_smallletters))
		letters = "BULLET";
	instance_destroy();
}
if sprite_index == spr_fuelHUD && global.fuel < 3
{
	global.fuel += 1;
	with (instance_create(x, y, obj_smallletters))
		letters = "FUEL";
	instance_destroy();
}
