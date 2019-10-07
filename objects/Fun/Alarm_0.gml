global.funvar += 0.5;
audio_play_sound(snd_fun9, 1, false);

visible = false

var layerid = layer_get_id("GameObjects");
var layer_elements = layer_get_all_elements(layerid);

for (var i = 0; i < array_length_1d(layer_elements); i++;) {
	var layerelement_id = layer_elements[i];
	var object = layer_instance_get_instance(layerelement_id)
	
	
	if (variable_instance_exists(object, "nothing_fun") && object.nothing_fun == false) {
		fix = physics_fixture_create();
		physics_fixture_set_box_shape(fix,object.sprite_width / 2,object.sprite_height / 2);
		physics_fixture_set_density(fix,0.5);
		physics_fixture_set_restitution(fix, global.funvar);
		physics_fixture_bind(fix, object);
		physics_fixture_delete(fix);
		 
		show_debug_message("FUN!");
		
		object.nothing_fun = true;	
	}
	
	// add particle effect to each physics object
	// the new emitter should be added on each new fun instance
	// 	so its fine to do it without "nothings_fun" check
	if (variable_instance_exists(object, "nothing_physics")) {
		var tada_instance = instance_create(object.x, object.y, tada_object)
		tada_instance.parent = object
	}
}

//alarm[0] = 10;