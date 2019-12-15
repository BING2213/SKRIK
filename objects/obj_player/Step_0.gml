/// @description CONTROL
depth=-y;

///MOVEMENT
if(keyboard_check(vk_right))
{hspeed_=4;sprite_index=spr_player_walk_right}
else if(keyboard_check(vk_left)) 
{hspeed_=-4;sprite_index=spr_player_walk_left}
else
{hspeed_=0;sprite_index=spr_player_walk_idle}
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
if(place_meeting(x,y+vspeed_,obj_solid))
{
	
	
	
	
	while !place_meeting(x,y+sign(vspeed_),obj_solid)
	{y+=sign(vspeed_);}
	vspeed_=0;
}
y+=vspeed_;

//SKILL_1_CRY
if(keyboard_check_pressed(vk_space))
{instance_create_layer(x,y,"SkillLayer",obj_player_collision);
engy-=1;}
if(keyboard_check_released(vk_space))
{instance_destroy(obj_player_collision)}


