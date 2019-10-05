/// @description Insert description here
// You can write your code in this editor
var i;
for (i = 0; i < instance_count; i += 1;)
   {
	   if OncePlayer = true
	   {
		   with (instance_id[i]) 
		   {
				if x > 30 and x <580
				and y > 120 and y <560
				and variable_instance_exists(instance_id[i],"object_player")
				{	
				global.playerId = instance_id[i]
				OncePlayer = false
				}
		   }
	   }
   }	
//if global.goalTime = true
{
if global.startedPlaying = true
{
global.timer -= 1/room_speed
if global.timer <=0 and oMeta.draw != true
{
timerSpecs.draw2 = true	
}
}  
}
if global.goalLife = true
{
if global.startedPlaying = true
{
if global.livesQty <=0 and oMeta.draw != true
{
lifeSpecs.draw5 = true	
}
}  
}