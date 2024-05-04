// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_panicbg_start() //gml_Script_scr_panicbg_start
{
    var camw = camera_get_view_width(view_camera[0])
    var camh = camera_get_view_height(view_camera[0])
    if ((!variable_global_exists("panicbg_surface")) || (!surface_exists(global.panicbg_surface)))
        global.panicbg_surface = surface_create(camw, camh)
    if (event_type == 8 && event_number == 0)
    {
        surface_set_target(global.panicbg_surface)
        draw_clear_alpha(c_white, 0)
        var a = layer_get_all()
        for (var i = 0; i < array_length(a); i++)
        {
            var _cam_x = camera_get_view_x(view_camera[0])
            var _cam_y = camera_get_view_y(view_camera[0])
            if (string_copy(layer_get_name(a[i]), 1, 12) == "Backgrounds_" || string_copy(layer_get_name(a[i]), 1, 11) == "Foreground_" || string_copy(layer_get_name(a[i]), 1, 7) == "Assets_")
            {
                layer_x(a[i], (layer_get_x(a[i]) - abs(_cam_x)))
                layer_y(a[i], (layer_get_y(a[i]) - abs(_cam_y)))
            }
        }
    }
}
function scr_panicbg_end() //gml_Script_scr_panicbg_end
{
    if (event_type == 8 && event_number == 0)
    {
        var camw = camera_get_view_width(view_camera[0])
        var camh = camera_get_view_height(view_camera[0])
        var _cam_x = camera_get_view_x(view_camera[0])
        var _cam_y = camera_get_view_y(view_camera[0])
        surface_reset_target()
        shader_set(shd_panicbg)
        var panic_id = shader_get_uniform(shd_panicbg, "panic")
        shader_set_uniform_f(panic_id, (global.wave / global.maxwave))
        var time_id = shader_get_uniform(shd_panicbg, "time")
        shader_set_uniform_f(time_id, (global.panicshadetimer / 1000))
        with (obj_parrallax)
            event_perform(ev_other, ev_user0)
        draw_surface(global.panicbg_surface, _cam_x, _cam_y)
        shader_reset()
    }
}
