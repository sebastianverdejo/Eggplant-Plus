if obj_player.character == "V"
{
	shader_set(global.Pal_Shader)
	if global.noisejetpack
		pal_swap_set(spr_vigipalette, 2, false)
	else
		pal_swap_set(spr_vigipalette, obj_player.paletteselect, false)
	draw_self()
	shader_reset()
}