function scr_start_game(slot, peppino = true, vigi = true)
{
	instance_create(x, y, obj_fadeout);
	with obj_player
	{
		targetRoom = hub_loadingscreen;
		targetDoor = "A";
		if !global.coop
		{
			if other.showvigi == true
				character = "V";
			if other.showvigi == false
				character = "P";
		}
		with obj_savesystem
			ispeppino = peppino;
	}
	global.currentsavefile = slot;
	gamesave_async_load();
}
