/// @description CONTROL
depth=-y;

///MOVEMENT
if(keyboard_check(vk_right))
{hspeed_=4;sprite_index=spr_player_walk_right}
else if(keyboard_check(vk_left)) 
{hspeed_=-4;sprite_index=spr_player_walk_left}
else
{hspeed_=0;}
if(place_meeting(x+hspeed_,y,obj_solid))
{
	while !place_meeting(x+sign(hspeed_),y,obj_solid)
	{x+=sign(hspeed_);}
	hspeed_=0;
}
x+=hspeed_;

if(keyboard_check(vk_up)) 
{vspeed_=-4;sprite_index=spr_player_walk_up}
else if(keyboard_check(vk_down)) 
{vspeed_=4;sprite_index=spr_player_walk_down}
else
{vspeed_=0;}

if (vspeed_=0 && hspeed_=0){sprite_index=spr_player_walk_idle}

if(place_meeting(x,y+vspeed_,obj_solid))
{
	while !place_meeting(x,y+sign(vspeed_),obj_solid)
	{y+=sign(vspeed_);}
	vspeed_=0;
}
y+=vspeed_;

//SKILL_1_CRY
//ENERGY

if(keyboard_check_pressed(vk_space)){pressspace=1}
if(keyboard_check_released(vk_space)){pressspace=0}

if(keyboard_check_pressed(vk_space)&&engy>=0)
{instance_create_layer(x,y,"SkillLayer",obj_player_collision);
instance_create_layer(x,y-55,"SkillLayer",obj_energy);
}

if(pressspace=1&&engy>=0){engy-=1;}

if(keyboard_check_released(vk_space)||engy<=0)
{instance_destroy(obj_player_collision)}

if(engy<100&&pressspace=0&&vspeed_=0&&hspeed_=0){engy+=5}

if(engy>=100&&pressspace=0){instance_destroy(obj_energy)}

//CRY_anim
if(keyboard_check(vk_right)&&keyboard_check(vk_space)&&engy>=0){sprite_index=spr_player_cry_right}
if(keyboard_check(vk_left)&&keyboard_check(vk_space)&&engy>=0){sprite_index=spr_player_cry_left}
if(keyboard_check(vk_up)&&keyboard_check(vk_space)&&engy>=0){sprite_index=spr_player_cry_up}
if(keyboard_check(vk_down)&&keyboard_check(vk_space)&&engy>=0){sprite_index=spr_player_cry_down}
if(vspeed_=0&&hspeed_=0&&keyboard_check(vk_space)&&engy>=0){{sprite_index=spr_player_cry_idle}}
//dead
if(mhp<=0){room_goto(rm_gameover);}