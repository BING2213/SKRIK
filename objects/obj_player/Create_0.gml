instance_create_layer(camera_get_view_x(view_camera[0])+25,camera_get_view_y(view_camera[0])-25,"SkillLayer",obj_health)

hspeed_=0
vspeed_=0
keyboard_set_map(ord("D"),vk_right)
keyboard_set_map(ord("A"),vk_left)
keyboard_set_map(ord("W"),vk_up)
keyboard_set_map(ord("S"),vk_down)
sprite_index=spr_player_walk_idle
globalvar skilldis;
skilldis=0
mhp=100;
engy=100;
pressspace=0