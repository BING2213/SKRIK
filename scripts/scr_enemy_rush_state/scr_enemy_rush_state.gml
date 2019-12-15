scr_check_for_player()
targetx=obj_player.x;
targety=obj_player.y;
if(targetx!=x && targety!=y){
x += sign(targetx - x)*spd*1.4;
y += sign(targety - y)*spd*1.4;
}
else
{
x += sign(targetx - x)*spd*2;
y += sign(targety - y)*spd*2;
}