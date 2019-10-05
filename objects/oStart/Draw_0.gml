/// @description Insert description here
// You can write your code in this editor

if draw = true
{
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,330-2,"VICTORY",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(300,330,"VICTORY",0.6,0.6,0)	
}
else
{
draw_self()	
}