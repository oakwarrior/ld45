/// @description Insert description here
// You can write your code in this editor
event_inherited()
if x > 30 and x <580
and y > 120 and y <560
and draggable = false
{
global.goalMeta = true	
}
else
{
global.goalMeta = false	
}


if place_meeting(x-4,y,global.playerId) and global.startedPlaying = true
or  place_meeting(x+4,y,global.playerId) and global.startedPlaying = true
or  place_meeting(x,y-4,global.playerId) and global.startedPlaying = true
or  place_meeting(x,y+4,global.playerId) and global.startedPlaying = true
{
show_debug_message("kolizja z playerem")	
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <560
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		and !variable_instance_exists(instance_id[i],"ui_template_var3")
		and !variable_instance_exists(instance_id[i],"ui_template_var5")
		{	
			instance_destroy()
		}
   }
   }	
	
}