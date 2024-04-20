showvigi = 0;
selected = 1; // 0 is pep, 1 is noise
image_speed = 0.35;
ready = false;
readyload = false;
global.characterselectprep = 0;
global.characterselectload = 0;
key_select = 0;
cors = 0;
char = 0;
char2 = 0;

with obj_player
	state = states.titlescreen;
with obj_peppinoselect
	visible = false;
with obj_noiseselect
	visible = false;