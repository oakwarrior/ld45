show_debug_message("ENABLING GRAVITY!")

visible = false

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	

	
	if (variable_instance_exists(object, "nothing_physics") && object.nothing_physics == true) {
		physics_world_gravity(0, 10);
	}
}

alarm[0] = 10;