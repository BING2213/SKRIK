scr_check_for_player()
if(point_direction(x,y,obj_player.x,obj_player.y)<sight)
{
	scr_check_for_player()
}
else if (x==originx&&y==originy){state=scr_enemy_idle_state}
else{
x+=sign(originx-x)*spd;
y+=sign(originy-y)*spd;
}