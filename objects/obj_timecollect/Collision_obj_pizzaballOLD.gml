if obj_player.character == "V"
{
	if global.playerhealth != 8
	{
		global.playerhealth--;
		with obj_camera
			healthshaketime = 60;
	}
}
global.heattime = 60;
with obj_camera
	healthshaketime = 60;
instance_destroy();
global.collect += 100;
create_collect(x, y, sprite_index, val);
with (instance_create(x + 16, y, obj_smallnumber))
	number = string(100);
