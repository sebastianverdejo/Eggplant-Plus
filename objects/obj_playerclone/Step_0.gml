var xx = obj_player1.x;
var yy = obj_player1.y;
var ixs = obj_player1.xscale * obj_player1.scale_xs;
var iys = obj_player1.yscale * obj_player1.scale_ys;
var v = obj_player1.vsp;
var msk = obj_player1.mask_index;
var sprimg = obj_player1.sprite_index;
var imagespeed = obj_player1.image_speed;
var imageindex = obj_player1.image_index;
var vis = obj_player1.visible;
var lastroomtemp = room;
switch state
{
	case states.normal:
		ds_queue_enqueue(followqueue, [xx, yy, ixs, v, msk, sprimg, lastroomtemp, imagespeed, imageindex, vis, iys]);
		if (ds_queue_size(followqueue) > LAG_STEPS)
		{
			var b = ds_queue_dequeue(followqueue);
			x = b[0]
			y = b[1]
			image_xscale = b[2];
			vsp = b[3];
			mask_index = b[4];
			sprite_index = b[5];
			lastroom = b[6];
			image_speed = b[7];
			image_index = b[8];
			if lastroom != room
			{
				playercloneabletohurt = false;
				visible = false;
			}
			else
			{
				playercloneabletohurt = b[9];
				visible = b[9];
			}
			image_yscale = b[10];
		}
		if place_meeting(x, y, obj_parryhitbox)
		{
			if extra = 0
			{
				sprite_index = spr_player_stunned;
				state = states.stun;
			}
		}
		break;
		
	case states.stun:
		image_speed = 0.35;
		playercloneabletohurt = false;
		if floor(image_index) == image_number - 1
		{
			state = states.normal;
		}
		break;
}
if place_meeting(x, y, obj_player)
{
	//if playercloneabletohurt
		//scr_hurtplayer(obj_player);
}
grounded = scr_solid(x, y + 1);