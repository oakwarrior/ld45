/// @description Insert description here
// You can write your code in this editor

///Dragging objects
// i have no idea what most of this code does i just pulled it from the internet lol

if (mouse_check_button_pressed(mb_left)) {
    var lowest_depth = 999999;
    var lowest_id = noone;
    with (oDragParent) {
        if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
            if (depth < lowest_depth) {
                lowest_depth = depth;
                
				//Oak code
				
				//clone new object if it's a source
				if(id.drag_source == true) {
					new_spawn = instance_copy(true);
					new_spawn.drag_source = false;
					lowest_id = new_spawn.id; //what am i even doing
				}
				//if it's already a clone then drag it more
				else {
					lowest_id = id; //what am i even doing
				}
            }
        }
		audio_play_sound(snd_buttonclick, 1, false);
    }
    if (lowest_id != noone) {
		obj_drag_object = lowest_id;
        lowest_id.draggable = true;
    }
}

if (mouse_check_button_released(mb_left)) 
{
	if (obj_drag_object != noone) {
		with (obj_drag_object) {
			audio_play_sound(snd_drop, 1, false);
			draggable = false;
			instance_destroy();
			if mouse_x > 30 and mouse_x < 580 and mouse_y > 120 and mouse_y <510 {
				var object = instance_create(mouse_x, mouse_y, nothing_object)
				object.layer = layer_get_id("GameObjects");
			}
		}			
	}    
	
	
}