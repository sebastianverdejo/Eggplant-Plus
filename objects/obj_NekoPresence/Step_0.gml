/// @description Update NekoPresence so async events will execute.

np_update();

np_setpresence(global.npstate + global.npstateextrainfo + global.npscore, global.npdetails, global.nplarge_image_key, global.npsmall_image_key);