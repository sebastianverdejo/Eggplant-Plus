function scr_player_mach1()
{
	image_speed = 0.5;
	landAnim = false;
	machhitAnim = false;
	crouchslideAnim = true;
	dir = xscale;
	move = key_left + key_right;
	sprite_index = spr_mach1;
	image_index = 0;
	state = states.mach2
}