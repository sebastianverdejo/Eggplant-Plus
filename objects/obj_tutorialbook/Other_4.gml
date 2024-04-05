if !instance_exists(self)
	exit;
if is_undefined(text)
{
	instance_destroy();
	exit;
}

var r = string_letters(room_get_name(room));
if global.panic && r != "towertutorial" && r != "towertutorialN"
{
	instance_destroy();
	exit;
}

if surface_exists(surfclip)
	surface_free(surfclip);
if surface_exists(surffinal)
	surface_free(surffinal);

var p = 1;
var l = string_length(text);
var old_text = text;
text = "";
font = lang_get_font("tutorialfont");
draw_set_font(font);

trace("Separating text: ", old_text);
while p <= l
{
	text = string_insert(string_char_at(old_text, p), text, p + 1);
	text = scr_separate_text(text, -4, (text_sprite_width * text_xscale) - (text_contentpad * 2));
	p++;
}
trace("Separated text: ", text);

text_yscale = (string_height(text) + (text_contentpad * 2)) / text_sprite_height;
if text_yscale < 1
	text_yscale = 1;

if change_y
	text_y = -(text_yscale * text_sprite_height);
else
	change_y = true;

text_oldxscale = text_xscale;
draw_set_font(font);
text_arr = scr_compile_icon_text(text);
