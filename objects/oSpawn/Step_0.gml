/// @description Insert description here
// You can write your code in this editor
if global.startedPlaying = true
and Once = true
{
spawn_amount = 4;
if alarm[0] < 1
{
alarm[0] = spawn_rate	
alarm[1] = room_speed * 5;
}
show_debug_message("key up, go")
global.enemySpeed = 1
Once = false
}
