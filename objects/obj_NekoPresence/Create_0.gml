/// @description Initialize Discord.

#macro DISCORD_APP_ID "1225670135059058698"

ready = false;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}
global.npstate = "In Game";
global.npdetails = "Watching the Epic Intro";
global.nplarge_image_key = "rp";
global.npsmall_image_key = "";
global.npstateextrainfo = "";
global.npscore = "";
global.npinlevel = 0