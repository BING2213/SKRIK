if(instance_exists(obj_player)){
	var dis=point_direction(x,y,obj_player.x,obj_player.y);
	var dis_origin=point_direction(x,y,originx,originy);
	var dis_teacher=point_direction(x,y,obj_teacher.x,obj_teacher.y)


	
	if(dis_teacher<50){scr_enemy_away_state();}
	else if(dis<sight){
		targetx=obj_player.x;
		targety=obj_player.y;
		state=scr_enemy_chase_state;
	}
	else if (dis_origin>128)&&(dis>sight)
	{state=scr_enemy_back_state;}
	else{state=scr_enemy_idle_state}
}else{
	state=scr_enemy_wander_state;}
