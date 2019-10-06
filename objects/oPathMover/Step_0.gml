/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,oBullet)
{
hp -= 2;
}
if(hp <= 0) {
	instance_destroy();
}
if global.startedPlaying = true
{
Once = false	
}

if pPos >=1
{
if global.goalLife = true
{
global.livesQty -=1	
}
if oSpawn.spawn_amount = global.spawn_amount
{
if instance_exists(oPathMover)
{
with (oPathMover)
{
if path_get_number(path) > 0
{
for (var b = 1 ; b < path_get_number(path) ; b++)
{
path_delete_point(path,b)
}
}
path_clear_points(path)
path_add_point(path,0,0,1)
path_add_point(path,11,45,1)
}
}	
}
instance_destroy()
}