/// @description Insert description here
// You can write your code in this editor
//
if draw5 = true and oMeta.draw != true
{
show_debug_message("timer")	
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,330-2,"YOU DEAD",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(300,330,"YOU DEAD",0.6,0.6,0)	
}
else if draw5 = false
{
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(565-27-2,140-2,"LIVES: "+string(round(global.livesQty)),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(565-27,140,"LIVES: "+string(round(global.livesQty)),0.3,0.3,0)
}
