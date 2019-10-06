/// @description Insert description here
// You can write your code in this editor
physics_world_gravity(0, 0);
global.memes = false;
global.tornado = false;

var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <510
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		//and !variable_instance_exists(instance_id[i],"ui_template_var2")
		//and !variable_instance_exists(instance_id[i],"ui_template_var3")
		{	
			instance_destroy()
		}
		
   }
   }
   
   if instance_exists(oPlayer)
   {
	with (oPlayer)
	{
		if x > 30 and x < 580 and y > 120 and y <510
		{
		instance_destroy()	
		}
	}
   }
 
global.startedPlaying = false 
global.goalMeta = false
global.goalLife = false
global.goalPoints = false
global.goalTime = false
global.goalEnemies = false
goals_controller.OncePlayer = true
global.playerId = 0
ds_grid_destroy(global.enemyTable)
global.enemyTable = ds_grid_create(1,0)
global.points = 0