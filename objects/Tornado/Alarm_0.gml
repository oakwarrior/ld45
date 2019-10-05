

visible = false

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	
	
	if (variable_instance_exists(object, "nothing_tornado") && object.nothing_tornado == true) {
		object.phy_speed_y += irandom_range(-1, 1);
		
		if(object.x >= 200 && object.x <= 300) {
			object.phy_speed_x += irandom_range(0.0, 4.5);
		}
		else if(object.x > 300 && object.x <= 400) {
			object.phy_speed_x += irandom_range(0.0, -4.5);
		}
		else if(object.x < 200) {
			object.phy_speed_x += irandom_range(0.0, 2.5);
		}
		else if(object.x > 400) {
			object.phy_speed_x += irandom_range(-2.5, 0.0);
		}
		
		
		
		object.phy_angular_velocity += irandom_range(-15, 15);
		 
		show_debug_message("TORNADO!");
	}
}

alarm[0] = 10;