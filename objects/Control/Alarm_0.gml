var this_x = x
var this_y = y
var this_id = id

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

var closest_object = -1
var nearest_distance = 6666

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	
	if (object.id != this_id) {
		var distance = point_distance(this_x, this_y, object.x, object.y)
	
		if (distance < nearest_distance) {
			closest_object = object
			nearest_distance = distance
		}	
	}
}

if (closest_object != -1) {
	if (variable_instance_exists(closest_object, "nothing_controllable")) {
		closest_object.nothing_controllable = true;
		var border_hi_gms = instance_create(closest_object.x - 4, closest_object.y - 4, border_object)
		border_hi_gms.parent = closest_object
	}
}
show_debug_message(closest_object)

instance_destroy();