for (var i = 0; i < abs(image_xscale); i++)
	draw_sprite(sprite_index, image_index, xstart + (i * 32), ystart);
for (var i = 0; i < abs(image_yscale); i++)
	draw_sprite(sprite_index, image_index, xstart, ystart + (i * 32));