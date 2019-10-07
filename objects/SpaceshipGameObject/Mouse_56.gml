/// @description Insert description here
// You can write your code in this editor
if mouse_x > 16 and mouse_x <530 and mouse_y > 120
and mouse_y <530
{
if CoolDown = true
{
var mk = instance_create(x,y,oBullet)
var d = point_direction(x,y,mouse_x,mouse_y);
with (mk)
{
direction = d
speed = 1
}
CoolDown = false
alarm[1]=12
}
}