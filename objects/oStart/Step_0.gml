/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,oMeta)
{
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <510
		and !variable_instance_exists(instance_id[i],"ui_template_var")
		and !variable_instance_exists(instance_id[i],"ui_template_var3")
		{	
			instance_destroy()
		}
		if x > 30 and x <580
		and y > 120 and y <510
		and variable_instance_exists(instance_id[i],"ui_template_var3")
		{	
			with (oStart)
			{
			draw = true	
			}
		}
   }
   }	
	
}