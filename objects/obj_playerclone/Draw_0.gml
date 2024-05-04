var palinfoclone = get_pep_palette_info();
var ps = palinfoclone.paletteselect;
if global.ricebusyon
	var spr = spr_ricepalette;
else
	var spr = palinfoclone.spr_palette;
pal_swap_set(spr, ps, false);
draw_self();
if (global.noisejetpack)
{
	pal_swap_set(palinfoclone.spr_palette, 2, false);
	draw_self();
}
shader_reset();