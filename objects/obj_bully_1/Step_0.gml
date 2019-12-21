depth=-y;
if(point_direction(x,y,obj_player.x,obj_player.y)<=skilldis){state=scr_enemy_rush_state;}
script_execute(state);
