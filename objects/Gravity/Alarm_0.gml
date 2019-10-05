show_debug_message("ENABLING GRAVITY!")

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	
	
	if (variable_instance_exists(object, "nothing_physics") && object.nothing_physics == true) {
		object.phy_active = true
	}
}