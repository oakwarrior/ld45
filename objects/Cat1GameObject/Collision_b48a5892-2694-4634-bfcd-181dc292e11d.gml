/// @description Insert description here
// You can write your code in this editor

if(!isTransformed) {
	show_debug_message("BLIN KOT ACTIVATE!");
	sprite_index = Blinkot;
	isTransformed = true;
	instance_destroy(other);
}
