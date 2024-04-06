depth = -600;
if (instance_number(object_index) > 1)
{
	instance_destroy();
	exit;
}
dirty = false;
savegame = false;
saveoptions = false;
fadeoutcreate = false;
showicon = false;
ini_str = "";
state = 0;
icon_index = 0;
ispeppino = true;
icon_max = sprite_get_number(spr_pizzaslice);
ini_open("saveData.ini");
ini_str_options = ini_close();
ini_open_from_string(obj_savesystem.ini_str_options);
global.option_heatmeter = ini_read_real("Option", "heatmeter", false);
global.option_doublegrab = ini_read_real("Option", "doublegrab", false);
global.option_chainsaw = ini_read_real("Option", "chainsaw", false);
obj_savesystem.ini_str_options = ini_close();