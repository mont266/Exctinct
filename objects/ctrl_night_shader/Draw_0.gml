/// @description Surface Draw
surface_set_target(nightSurf);
draw_clear(c_black);
surface_reset_target();
draw_surface_ext(nightSurf, 0, 0, 1, 1, 0, c_white, alpha);