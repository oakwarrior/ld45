/// @description Insert description here
// You can write your code in this editor
if draggable = false //and mouse_check_button_released(mb_l)
{
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   with (instance_id[i]) 
   {
		if x > 30 and x <580
		and y > 120 and y <510
		{
			if place_meeting(x,y,DraggableDelete)
			{
				instance_destroy()
			}
		}
   }
   }
    if x > 30 and x <580
	and y > 120 and y <510
	{
   instance_destroy()
	}
}
