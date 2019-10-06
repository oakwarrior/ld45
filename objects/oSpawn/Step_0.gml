/// @description Insert description here
// You can write your code in this editor
if global.startedPlaying = true
and Once = true
{
spawn_amount = global.spawn_amount
if alarm[0] < spawn_rate
{
alarm[0] = spawn_rate	
//alarm[1] = room_speed * 5;
}
show_debug_message("key up, go")
global.enemySpeed = 1
Once = false
}
