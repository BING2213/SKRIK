

if(point_direction(x,y,obj_player.x,obj_player.y)<sight)
{
	scr_check_for_player()
}
else{
x+=sign(obj_player.x-x)*spd;
y+=sign(obj_player.y-y)*spd;
state=scr_enemy_wander_state
}