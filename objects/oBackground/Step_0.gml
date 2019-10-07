/// @description Insert description here
// You can write your code in this editor
show_debug_message(string(global.switchBackground))
if(global.switchBackground) {
	rando = irandom(2);
	global.switchBackground = false;
	if(rando == 0) {
		sprite_index = BackgroundWindows;
		show_debug_message("cock1");
	}
	else if(rando == 1) {
		sprite_index = BackgroundCandy;
		show_debug_message("cock2");
	}
	else if(rando == 2) {
		sprite_index = BackgroundSpace;
		show_debug_message("cock3");
	}
	
}