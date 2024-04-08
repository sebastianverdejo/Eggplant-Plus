with other
{
	if other.hurtplayer == 0
	{
		if key_jump2
		{
			if state == states.normal || state == states.jump || hsp == 0
			{
				vsp = -20;
				sprite_index = spr_superjump
				state = states.Sjump;
			}
			image_index = 0;
			jumpAnim = true;
			jumpstop = true;
			other.hurtplayer = true;
		}
	}
}
