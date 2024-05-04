if state == states.crouchslide
{
	if other.flash
		other.flash = false;
	if !global.ricebusyon
		scr_hurtplayer(other);
}
else if ((state == states.reloading || (state == states.stun && savedthrown == thrown && !savedthrown)) && wastedhits == 4 && phase == 1 && (other.instakillmove || other.state == states.handstandjump))
	scr_vigilante_do_hurt_phase2(other);
if global.ricebusyon
{
	if room != boss_pizzaface
		elitehit = -1;
}