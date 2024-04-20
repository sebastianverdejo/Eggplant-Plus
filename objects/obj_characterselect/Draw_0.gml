var spr = spr_characterselectP;
if !readyload
{
	draw_set_alpha(1);
	draw_sprite(spr_characterselectbackground, 0, 0, 0)
	if key_select == 0
    {
		draw_text_colour(600 + irandom_range(-1, 1), 300 + irandom_range(-1, 1), "SWAP MODE", c_white, c_white, c_white, c_white, 1);
	}
	else
	{
		draw_text_colour(600, 300, "SWAP MODE", c_white, c_white, c_white, c_white, 0.5);
	}
	if key_select == 1
    {
		draw_text_colour(530 + irandom_range(-1, 1), 350 + irandom_range(-1, 1), "COOP", c_white, c_white, c_white, c_white, 1);
	}
	else
	{
		draw_text_colour(530, 350, "COOP", c_white, c_white, c_white, c_white, 0.5);
	}
}
if readyload && cors == 1
{
	draw_set_alpha(1);
	draw_sprite(spr_characterselectbackground, 0, 0, 0)
}
if key_select == 0 && cors == 1 && readyload
{
	if ((char == 0))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 300 + irandom_range(-1, 1), "PLAYER 1 IS PEPPINO", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 1))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 300 + irandom_range(-1, 1), "PLAYER 1 IS NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 2))
	{
		draw_text_colour(420 + irandom_range(-1, 1), 300 + irandom_range(-1, 1), "PLAYER 1 IS POGO NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 3))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 300 + irandom_range(-1, 1), "PLAYER 1 IS VIGILANTE", c_white, c_white, c_white, c_white, 1)
    }
}
else if key_select != 0 && cors == 1 && readyload
{
	if ((char == 0))
    {
		draw_text_colour(420, 300, "PLAYER 1 IS PEPPINO", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 1))
    {
		draw_text_colour(420, 300, "PLAYER 1 IS NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 2))
	{
		draw_text_colour(420, 300, "PLAYER 1 IS POGO NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char == 3))
    {
		draw_text_colour(420, 300, "PLAYER 1 IS VIGILANTE", c_white, c_white, c_white, c_white, 1)
    }
}
if key_select == 1 && cors == 1 && readyload
{
	if ((char2 == 0))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 350 + irandom_range(-1, 1), "PLAYER 2 IS PEPPINO", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 1))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 350 + irandom_range(-1, 1), "PLAYER 2 IS NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 2))
	{
		draw_text_colour(420 + irandom_range(-1, 1), 350 + irandom_range(-1, 1), "PLAYER 2 IS POGO NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 3))
    {
		draw_text_colour(420 + irandom_range(-1, 1), 350 + irandom_range(-1, 1), "PLAYER 2 IS VIGILANTE", c_white, c_white, c_white, c_white, 1)
    }
}
else if key_select != 1 && cors == 1 && readyload
{
	if ((char2 == 0))
    {
		draw_text_colour(420, 350, "PLAYER 2 IS PEPPINO", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 1))
    {
		draw_text_colour(420, 350, "PLAYER 2 IS NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 2))
	{
		draw_text_colour(420, 350, "PLAYER 2 IS POGO NOISE", c_white, c_white, c_white, c_white, 1)
    }
    else if ((char2 == 3))
    {
		draw_text_colour(420, 350, "PLAYER 2 IS VIGILANTE", c_white, c_white, c_white, c_white, 1)
    }
}
if key_select == 2 && cors == 1 && readyload
{
	draw_text_colour(420 + irandom_range(-1, 1), 400 + irandom_range(-1, 1), "START", c_white, c_white, c_white, c_white, 1)
}
else if key_select != 2 && cors == 1 && readyload
	draw_text_colour(420, 400, "START", c_white, c_white, c_white, c_white, 0.5)
else if (readyload || global.characterselectprep = 1)
{
	draw_set_alpha(1);
	if !global.swapmode
	{
		if ready
			spr = spr_characterselectPselected;
		if selected == 1
		{
			spr = spr_characterselectN;
			if ready
				spr = spr_characterselectNselected;
		}
	}
	else
	{
		spr = spr_player1cursor;
		if ready
			spr = spr_player1cursorselected;
	}

	var x1 = 344;
	var x2 = 528;
	var xx = x1;
	var yy = 94;
	if selected == 1
		xx = x2;

	draw_set_font(lang_get_font("bigfont"));
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var txt = lang_get_value_newline("swap_press_start");
	if global.swapmode && obj_inputAssigner.player_input_device[0] == -2
		draw_text(xx + irandom_range(-1, 1), yy + irandom_range(-1, 1), txt);
	else
		draw_sprite(spr, -1, xx, yy);

	if global.swapmode
	{
		spr = spr_player2cursor;
		if ready
			spr = spr_player2cursorselected;
		if obj_inputAssigner.player_input_device[0] == obj_inputAssigner.player_input_device[1]
		{
			spr = spr_player1cursor;
			if ready
				spr = spr_player1cursorselected;
		}
	
		xx = x2;
		if selected == 1
			xx = x1;
	
		if obj_inputAssigner.player_input_device[0] >= -1 && obj_inputAssigner.player_input_device[1] == -2
			draw_text(xx + irandom_range(-1, 1), yy + irandom_range(-1, 1), txt);
		else if obj_inputAssigner.player_input_device[1] >= -1
			draw_sprite(spr, -1, xx, yy);
	}
}