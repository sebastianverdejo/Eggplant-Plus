global.playerclonehowmuch -= 1;
with (instance_create(x, y, obj_sausageman_dead))
{
	sprite_index = spr_player_dead
	fmod_event_one_shot_3d("event:/sfx/enemies/kill", x, y);
}
ds_queue_destroy(followqueue);
