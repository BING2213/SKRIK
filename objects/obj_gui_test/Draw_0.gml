var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
draw_text(cx,cy,"energy=")
draw_text(cx+80,cy,obj_player.engy)
draw_text(cx,cy+20,"health=")
draw_text(cx+80,cy+20,obj_player.mhp)