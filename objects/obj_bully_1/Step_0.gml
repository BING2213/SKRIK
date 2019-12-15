depth=-y;
script_execute(state);
if(point_direction(x,y,obj_player.x,obj_player.y)<=skilldis){state=scr_enemy_rush_state;}