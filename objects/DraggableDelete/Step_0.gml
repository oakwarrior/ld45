/// @description Insert description here
// You can write your code in this editor
event_inherited()
depth= -9999
var i;
for (i = 0; i < instance_count; i += 1;)
   {
   if place_meeting(x,y,instance_id[i])
   {
		if x > 30 and x <580
		and y > 120 and y <510
		{
			alpha = false
			break;
		}
		else
		{
			alpha = true 
		}
   }
   else
   {
	 alpha = true 
   }
   }



