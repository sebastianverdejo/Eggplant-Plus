scr_menu_getinput();
if ((key_down2 && (key_up2 != key_down2)) && (key_select < 3))
{
	key_select += 1
	moveselected -= 50;
    fmod_event_one_shot("event:/sfx/ui/step");
}
if ((key_up2 && (key_down2 != key_up2)) && (key_select > -1))
{
    key_select -= 1
	moveselected += 50;
    fmod_event_one_shot("event:/sfx/ui/step");
}
moveselsmooth = lerp(moveselsmooth, moveselected, 0.5)
moveselsmoothhit = lerp(moveselsmoothhit, 0, 0.5)
if (((key_jump || key_back) && key_select <= -1) || (key_select > -1 && key_back))
{
	fmod_event_one_shot("event:/sfx/ui/select");
	with (obj_option)
	{
		backbuffer = 2;
		menu_goto(menus.options);
	}
	with create_transformation_tip((lang_get_value("option_controls_saved")))
	{
		depth = -700;
		alarm[1] = 100;
	}
    instance_destroy()
}
if (key_jump && key_select == 0)
{
	moveselsmoothhit += 10
	fmod_event_one_shot("event:/sfx/ui/select");
	if ((heatmeter == 0))
        heatmeter = 1
    else if ((heatmeter == 1))
        heatmeter = 0
	ini_open_from_string(obj_savesystem.ini_str_options);
	ini_write_real("Option", "heatmeter", heatmeter);
	obj_savesystem.ini_str_options = ini_close();
	global.option_heatmeter = heatmeter;
}
if (key_jump && key_select == 1)
{
	moveselsmoothhit += 10
	fmod_event_one_shot("event:/sfx/ui/select");
	if ((doublegrab == 1))
        doublegrab = 0
    else if ((doublegrab == 0))
        doublegrab = 1
	ini_open_from_string(obj_savesystem.ini_str_options);
	ini_write_real("Option", "doublegrab", doublegrab);
	obj_savesystem.ini_str_options = ini_close();
	global.option_doublegrab = doublegrab;
}
if (key_jump && key_select == 2)
{
	moveselsmoothhit += 10
	fmod_event_one_shot("event:/sfx/ui/select");
    if ((chainsaw == 0))
        chainsaw = 1
    else if ((chainsaw == 1))
        chainsaw = 0
	ini_open_from_string(obj_savesystem.ini_str_options);
	ini_write_real("Option", "chainsaw", chainsaw);
	obj_savesystem.ini_str_options = ini_close();
	global.option_chainsaw = chainsaw;
}
if (key_jump && key_select == 3)
{
	moveselsmoothhit += 10
	fmod_event_one_shot("event:/sfx/ui/select");
    if ((pistol == 0))
        pistol = 1
    else if ((pistol == 1))
        pistol = 0
	ini_open_from_string(obj_savesystem.ini_str_options);
	ini_write_real("Option", "pistol", pistol);
	obj_savesystem.ini_str_options = ini_close();
	global.option_pistol = pistol;
}