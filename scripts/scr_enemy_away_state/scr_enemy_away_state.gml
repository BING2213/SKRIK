if(obj_teacher.x!=x && obj_teacher.y!=y){
x -= sign(obj_teacher.x - x)*spd*0.7;
y -= sign(obj_teacher.y - y)*spd*0.7;
}
else
{
x -= sign(obj_teacher.x - x)*spd;
y -= sign(obj_teacher.y - y)*spd;
}