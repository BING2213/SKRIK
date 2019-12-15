scr_check_for_player()
targetx=obj_player.x;
targety=obj_player.y;
if(targetx!=x && targety!=y){
x += sign(targetx - x)*spd*0.7;
y += sign(targety - y)*spd*0.7;
}
else
{
x += sign(targetx - x)*spd;
y += sign(targety - y)*spd;
}