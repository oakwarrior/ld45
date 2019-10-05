/// @description Insert description here
// You can write your code in this editor
//
if draw2 = true and oMeta.draw != true
{
show_debug_message("timer")	
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,330-2,"TIME'S UP",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(300,330,"TIME'S UP",0.6,0.6,0)	
}
else if draw2 = false
{
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(40-2,140-2,"TIMER: "+string(round(global.timer)),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(40,140,"TIMER: "+string(round(global.timer)),0.3,0.3,0)
}
