

visible = false

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	
	
	if (variable_instance_exists(object, "nothing_tornado") && object.nothing_tornado == true) {
		object.phy_speed_y += irandom_range(-1, 1);
		object.phy_speed_x += irandom_range(-1, 1);
		object.phy_angular_velocity += irandom_range(-5, 5);
		 
		show_debug_message("TORNADO!" + string(object.speed) + " " + string(object.direction));
	}
}

alarm[0] = 10;