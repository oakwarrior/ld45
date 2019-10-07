/// @description Insert description here
// You can write your code in this editor
physics_world_gravity(0, 0);
global.memes = false;
audio_stop_sound(snd_epicsaxguy);
audio_stop_sound(snd_music2);
audio_play_sound(snd_music2, 3, true);	
global.tornado = false;
global.gravityvar = 10;
global.funvar = 1;
audio_stop_sound(snd_tornado5);

global.switchBackground = true;





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
path_clear_points(pTest0)
path_add_point(pTest0,0,0,1)
path_add_point(pTest0,11,45,1)
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

oGame.CanCreate = true 
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