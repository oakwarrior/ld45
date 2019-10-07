/// @description Insert description here
// You can write your code in this editor
show_debug_message(string(global.switchBackground))
if(global.switchBackground) {
	rando = irandom(5);
	global.switchBackground = false;
	if(rando == 0) {
		sprite_index = BackgroundWindows;
	}
	else if(rando == 1) {
		sprite_index = BackgroundCandy;
	}
	else if(rando == 2) {
		sprite_index = BackgroundSpace;
	}
	else if(rando == 3) {
		sprite_index = BackgroundMatrix;
	}
	else if(rando == 4) {
		sprite_index = BackgroundAbstract;
	}
	else if(rando == 5) {
		sprite_index = BackgroundLandscape;
	}
	
}