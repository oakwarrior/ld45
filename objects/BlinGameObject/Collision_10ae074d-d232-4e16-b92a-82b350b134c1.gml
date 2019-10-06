/// @description Insert description here
// You can write your code in this editor
if(!other.isTransformed && global.memes) {
	show_debug_message("BLIN KOT ACTIVATE!");
	other.sprite_index = Blinkot;
	other.isTransformed = true;
	instance_destroy(self);
}
