if global.swapmode && global.coop == 0
	instance_create_unique(obj_player1.x, obj_player1.y, obj_swapmodefollow);
scr_start_game(global.currentsavefile, selected == 0);
if global.coop
	obj_player2.visible = true