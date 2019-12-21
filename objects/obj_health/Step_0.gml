var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
x=cx+25;
y=cy-25;
image_speed=0;
image_index=0;

if(obj_player.mhp>=100){image_index=0}
if(obj_player.mhp>=90&&obj_player.mhp<100){image_index=1}
if(obj_player.mhp>=80&&obj_player.mhp<90){image_index=2}
if(obj_player.mhp>=70&&obj_player.mhp<80){image_index=3}
if(obj_player.mhp>=60&&obj_player.mhp<70){image_index=4}
if(obj_player.mhp>=50&&obj_player.mhp<60){image_index=5}
if(obj_player.mhp>=40&&obj_player.mhp<50){image_index=6}
if(obj_player.mhp>=30&&obj_player.mhp<40){image_index=7}
if(obj_player.mhp>=20&&obj_player.mhp<30){image_index=8}
if(obj_player.mhp>=10&&obj_player.mhp<20){image_index=9}
if(obj_player.mhp>=0&&obj_player.mhp<10){image_index=10}
if(obj_player.mhp<0){image_index=11}
