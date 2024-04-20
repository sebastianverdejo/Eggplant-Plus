pal_swap_init_system(shd_pal_swapper);
if global.panic == false
{
	global.npdetails = "In the Spooky Tower";
	global.npstateextrainfo = "";
}
global.roommessage = lang_get_value("room_towerunknown");
global.gameframe_caption_text = lang_get_value("caption_tower_pizzafacehall");
