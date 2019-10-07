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
	   	   if ds_grid_value_y(global.enemyTable,0,0,0,ds_grid_height(global.enemyTable)-1,instance_id[i]) = -1
		   or ds_grid_height(global.enemyTable) = 0
	   {
		   with (instance_id[i]) 
		   {
				if x > 30 and x <580
				and y > 120 and y <560
				and variable_instance_exists(instance_id[i],"obj_enemy")
				{	
				show_debug_message("dodaje enemy")	
				ds_grid_resize(global.enemyTable,1,ds_grid_height(global.enemyTable)+1)
				ds_grid_set(global.enemyTable,0,ds_grid_height(global.enemyTable)-1,instance_id[i])
				}
		   }
	   }
   }	
if global.goalTime = true
{
if global.startedPlaying = true
{
global.timer -= 1/room_speed
if global.timer <=0 and instance_exists(oMeta) and oMeta.draw != true
or global.timer <=0 and  !instance_exists(oMeta) and global.goalMeta = true
or global.timer <=0 and  !instance_exists(oMeta) and global.goalMeta = false
{
	if instance_exists(timerSpecs)
	{
timerSpecs.draw2 = true	
	}
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <560
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		and !variable_instance_exists(instance_id[i],"ui_template_var3")
		and !variable_instance_exists(instance_id[i],"draw2")
		{	
			instance_destroy()
		}
   }
   }	
}
}  
}
if global.goalLife = true
{
if global.startedPlaying = true
{
if global.livesQty <=0 and instance_exists(oMeta) and oMeta.draw != true
or global.livesQty <=0 and  !instance_exists(oMeta) and global.goalMeta = true
or global.livesQty <=0 and  !instance_exists(oMeta) and global.goalMeta = false
{
	if instance_exists(lifeSpecs)
	{
		if(!lifeSpecs.draw5) {
			audio_play_sound(snd_womp_womp, 1, false);	
			lifeSpecs.draw5 = true	
		}
	}
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <560
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		and !variable_instance_exists(instance_id[i],"ui_template_var3")
		and !variable_instance_exists(instance_id[i],"draw5")
		{	
			instance_destroy()
		}
   }
   }
}
}  
}
if global.goalMeta = true
{
if global.startedPlaying = true
{
if  !instance_exists(oMeta) and global.goalMeta = true
{
if instance_exists(victoryMeta)
{
victoryMeta.draw = true	
}
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <560
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		and !variable_instance_exists(instance_id[i],"ui_template_var3")
		and !variable_instance_exists(instance_id[i],"draw")
		{	
			instance_destroy()
		}
   }
   }
}
}  
}