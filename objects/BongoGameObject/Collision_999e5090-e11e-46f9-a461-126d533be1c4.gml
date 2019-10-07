/// @description Insert description here
// You can write your code in this editor
if(!other.isTransformed && global.memes) {
	show_debug_message("Bongo Cat ACTIVATE!");
	other.sprite_index = pongo_0;
	other.isTransformed = true;
	audio_play_sound(snd_bongos, 1, false);
	instance_destroy(self);
	
}
