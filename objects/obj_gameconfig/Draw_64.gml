draw_set_font(lang_get_font("creditsfont"));
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if key_select == -1
	draw_text_colour(yplacement, moveselsmooth, "Back", c_white, c_white, c_white, c_white, 1)
else
	draw_text_colour(yplacement, moveselsmooth, "Back", c_white, c_white, c_white, c_white, 0.5)
if key_select == 0
{
	if heatmeter = 1
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 50, "Heatmeter: On", c_white, c_white, c_white, c_white, 1)
	if heatmeter = 0
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 50, "Heatmeter: Off", c_white, c_white, c_white, c_white, 1)
}
else
	draw_text_colour(yplacement, moveselsmooth + 50, "Heatmeter", c_white, c_white, c_white, c_white, 0.5)
if key_select == 1
{
	if doublegrab = 1
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 100, "Double Grab: Chainsaw", c_white, c_white, c_white, c_white, 1)
	if doublegrab = 0
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 100, "Double Grab: None", c_white, c_white, c_white, c_white, 1)
}
else
	draw_text_colour(yplacement, moveselsmooth + 100, "Double Grab", c_white, c_white, c_white, c_white, 0.5)
if key_select == 2
{
	if chainsaw = 1
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 150, "Activate Chainsaw Key: Yes", c_white, c_white, c_white, c_white, 1)
	if chainsaw = 0
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 150, "Activate Chainsaw Key: No", c_white, c_white, c_white, c_white, 1)
}
else
	draw_text_colour(yplacement, moveselsmooth + 150, "Activate Chainsaw Key", c_white, c_white, c_white, c_white, 0.5)
if key_select == 3
{
	if pistol = 1
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 200, "Activate Pistol Key: Yes", c_white, c_white, c_white, c_white, 1)
	if pistol = 0
		draw_text_colour(yplacement + moveselsmoothhit, moveselsmooth + 200, "Activate Pistol Key: No", c_white, c_white, c_white, c_white, 1)
}
else
	draw_text_colour(yplacement, moveselsmooth + 200, "Activate Pistol Key", c_white, c_white, c_white, c_white, 0.5)
