if !readyload
{
	scr_menu_getinput();
    if ((key_up2 && (key_down2 != key_up2)) && (key_select > 0))
    {
        key_select -= 1
		fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
    }	
    if ((key_down2 && (key_up2 != key_down2)) && (key_select < 1))
    {
        key_select += 1
        fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
    }
	if ((key_jump || key_start) && key_select == 0)
	{
		ready = false;
		selected = 0;
		cors = 0;
		global.characterselectprep = 1;
		alarm[1] = 10;
	}
	if ((key_jump || key_start) && key_select == 1)
	{
		ready = false;
		selected = 0;
		cors = 1;
		global.characterselectprep = 1;
		alarm[1] = 10;
	}
}
if !ready && readyload && cors == 0
{
	with obj_peppinoselect
	visible = true;
	with obj_noiseselect
	visible = true;
	global.characterselectload = 1;
	scr_menu_getinput();
	if (!global.swapmode || obj_inputAssigner.player_input_device[obj_inputAssigner.player_index] > -2)
	{
		var move = key_left2 + key_right2;
		selected += move;
		if move != 0
			fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
		if selected < 0
			selected = 1;
		else if selected > 1
			selected = 0;
	}
	if ((key_jump || key_start) && (!global.swapmode || obj_inputAssigner.swap_ready))
	{
		ready = true;
		alarm[0] = 100;
		fmod_event_instance_stop(obj_music.music.event, true);
		if !global.swapmode
		{
			if selected == 0
			{
				fmod_event_one_shot("event:/sfx/ui/pepselect");
				obj_peppinoselect.sprite_index = spr_peppinoselected;
				obj_peppinoselect.image_index = 0;
				with obj_player1
				{
					character = "P";
					ispeppino = true;
					scr_characterspr();
				}
			}
			else
			{
				fmod_event_one_shot("event:/sfx/ui/noiseselect");
				obj_noiseselect.sprite_index = spr_noiseselected;
				obj_noiseselect.image_index = 0;
				with obj_player1
				{
					character = "P";
					ispeppino = false;
					scr_characterspr();
				}
			}
		}
		else
		{
			fmod_event_one_shot("event:/sfx/ui/pepselect");
			fmod_event_one_shot("event:/sfx/ui/noiseselect");
			obj_peppinoselect.sprite_index = spr_peppinoselected;
			obj_peppinoselect.image_index = 0;
			obj_noiseselect.sprite_index = spr_noiseselected;
			obj_noiseselect.image_index = 0;
			with obj_player1
			{
				character = "P";
				ispeppino = other.selected == 0;
				scr_characterspr();
			}
		}
	}
}
if !ready && readyload && cors == 1
{
	scr_menu_getinput();
	global.characterselectload = 1;
	if ((key_up2 && (key_down2 != key_up2)) && (key_select > 0))
    {
        key_select -= 1
		fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
    }	
    if ((key_down2 && (key_up2 != key_down2)) && (key_select < 2))
    {
        key_select += 1
        fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
    }
	if (key_select == 0) && (key_jump || key_start)
	{
		fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
		if ((char == 1))
			char = 2
		else if ((char == 2))
			char = 3
		else if ((char == 3))
			char = 0
		else if ((char == 0))
			char = 1
		global.chartoggle = char
	}
	if (key_select == 1) && (key_jump || key_start)
	{
		fmod_event_one_shot_3d("event:/sfx/pep/step", room_width / 2, room_height / 2);
		if ((char2 == 1))
			char2 = 2
		else if ((char2 == 2))
			char2 = 3
		else if ((char2 == 3))
			char2 = 0
		else if ((char2 == 0))
			char2 = 1
		global.chartoggle = char2
	}
	if ((key_jump || key_start) && key_select == 2 && !global.coop)
	{
		fmod_event_instance_stop(obj_music.music.event, true);
		ready = true;
		alarm[0] = 100;
		global.coop = 1;
		fmod_event_one_shot("event:/sfx/ui/pepselect");
		fmod_event_one_shot("event:/sfx/ui/noiseselect");
		with obj_player1
		{
			if (other.char == 2)
			{
				ispeppino = true
				character = "N"
				scr_characterspr()
			}
			else if (other.char == 3)
			{
				ispeppino = true
				character = "V"
				scr_characterspr()
			}
			else if other.char
			{
				ispeppino = false
				character = "P"
				scr_characterspr()
			}
			else
			{
				ispeppino = true
				character = "P"
				scr_characterspr()
			}
		}
		with obj_player2
		{
			if (other.char2 == 2)
			{
				ispeppino = true
				character = "N"
				scr_characterspr()
			}
			else if (other.char2 == 3)
			{
				ispeppino = true
				character = "V"
				scr_characterspr()
			}
			else if other.char2
			{
				ispeppino = false
				character = "P"
				scr_characterspr()
			}
			else
			{
				ispeppino = true
				character = "P"
				scr_characterspr()
			}
		}
	}
}