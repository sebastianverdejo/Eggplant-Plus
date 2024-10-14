if (other.state != states.barrel)
{
    if (other.state != states.fireass)
        scr_hurtplayer(other)
    else if (other.state == states.fireass)
        instance_destroy()
    if fake
        instance_destroy()
}
else
{
    with (other)
    {
        state = states.bump
        sprite_index = spr_bump
        image_index = 0
        hsp = (-6 * xscale)
        vsp = -4
        scr_soundeffect(sfx_loseknight)
        repeat (3)
            create_debris(x, y, spr_wooddebris)
    }
}

