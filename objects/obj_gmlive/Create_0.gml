// only include the extension if we're running from the IDE
#macro live_enabled (GM_build_type == "run")
if live_enabled
{
	// safeguard against making multiple obj_gmlive instances
	if (instance_number(obj_gmlive) > 1) {
		var first = instance_find(obj_gmlive, 0);
		if (id != first) { instance_destroy(); exit; }
	}
	if asset_get_index("live_init") == -1
		show_error("live_init is missing!\nEither GMLive is not imported in the project, or the 'GMLive' script got corrupted (try re-importing)\nIf you don't have GMLive, you can safely remove obj_gmlive and any remaining live_* function calls.\n\n", 1);

	// change the IP/port here if gmlive-server isn't running on the same device as the game
	// (e.g. when running on mobile platforms):
	live_init(1, "http://localhost:5100", "");

	live_blank_object = obj_blank;
	live_blank_room = rm_blank;
	live_room_updated = scr_room_updated;
	live_rooms = false;

	#region CONSTANTS (BECAUSE GMLIVE SUCKS)

	for (var i = 0; sequence_exists(i); i++)
		gml_asset_add(sequence_get(i).name, i);

	// File Attribute Constant
	live_constant_add("fa_readonly", fa_readonly);
	live_constant_add("fa_hidden", fa_hidden);
	live_constant_add("fa_sysfile", fa_sysfile);
	live_constant_add("fa_volumeid", fa_volumeid);
	live_constant_add("fa_directory", fa_directory);
	live_constant_add("fa_archive", fa_archive);

	// FMOD
	live_function_add("fmod_event_create_instance(str)", function(str) {
	    return fmod_event_create_instance(str);
	});
	live_function_add("fmod_event_instance_play(inst)", function(inst) {
	    return fmod_event_instance_play(inst);
	});
	live_function_add("fmod_event_instance_stop(inst, force)", function(inst, force) {
	    return fmod_event_instance_stop(inst, force);
	});
	live_function_add("fmod_event_instance_release(inst)", function(inst) {
	    return fmod_event_instance_release(inst);
	});
	live_function_add("fmod_event_instance_set_3d_attributes(inst, x, y)", function(inst, x, y) {
	    return fmod_event_instance_set_3d_attributes(inst, x, y);
	});
	live_function_add("fmod_event_instance_set_parameter(inst, param, value, force)", function(inst, param, value, force) {
	    return fmod_event_instance_set_parameter(inst, param, value, force);
	});
	live_function_add("fmod_event_instance_get_parameter(inst, param)", function(inst, param) {
	    return fmod_event_instance_get_parameter(inst, param);
	});
	live_function_add("fmod_set_parameter(param, value, force)", function(param, value, force) {
	    return fmod_set_parameter(param, value, force);
	});
	live_function_add("fmod_get_parameter(param, ignore_seek)", function(param, ignore_seek) {
	    return fmod_get_parameter(param, ignore_seek);
	});
	live_function_add("fmod_event_instance_set_paused(inst, pause)", function(inst, pause) {
	    return fmod_event_instance_set_paused(inst, pause);
	});
	live_function_add("fmod_event_instance_get_paused(inst)", function(inst) {
	    return fmod_event_instance_get_paused(inst);
	});
	live_function_add("fmod_event_instance_set_paused_all(pause)", function(pause) {
	    return fmod_event_instance_set_paused_all(pause);
	});
	live_function_add("fmod_event_one_shot(event)", function(event) {
	    return fmod_event_one_shot(event);
	});
	live_function_add("fmod_event_one_shot_3d(event, x, y)", function(event, x, y) {
	    return fmod_event_one_shot_3d(event, x, y);
	});
	live_function_add("fmod_event_instance_is_playing(inst)", function(inst) {
	    return fmod_event_instance_is_playing(inst);
	});
	live_function_add("fmod_event_instance_get_timeline_pos(inst)", function(inst) {
	    return fmod_event_instance_get_timeline_pos(inst);
	});
	live_function_add("fmod_event_instance_set_timeline_pos(inst, pos)", function(inst, pos) {
	    return fmod_event_instance_set_timeline_pos(inst, pos);
	});
	live_function_add("fmod_event_get_length(inst)", function(inst) {
	    return fmod_event_get_length(inst);
	});

	#endregion
}
else
	instance_destroy();