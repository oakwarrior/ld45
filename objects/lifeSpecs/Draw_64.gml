/// @description Insert description here
// You can write your code in this editor
//
if draw5 = true // and oMeta.draw != true
{
show_debug_message("timer")	
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,330-2,"YOU DEAD",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(285,330,"YOU DEAD",0.6,0.6,0)	
}
else if draw5 = false and !instance_exists(oSpawn)
or draw5 = false and instance_exists(oSpawn) and instance_number(oPathMover) > 0
{
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(545-27-2,155-2,"LIVES: "+string(round(global.livesQty)),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(545-27,155,"LIVES: "+string(round(global.livesQty)),0.3,0.3,0)
}
else if draw5 = false and instance_exists(oSpawn) and instance_number(oPathMover) = 0
{
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,330-2,"VICTORY",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(285,330,"VICTORY",0.6,0.6,0)	
if instance_exists(oPathMover)
{
with (oPathMover)
{
if path_get_number(path) > 0
{
for (var b = 1 ; b < path_get_number(path) ; b++)
{
path_delete_point(path,b)
}
}
path_clear_points(path)
path_add_point(path,0,0,1)
path_add_point(path,11,45,1)
}
}
}

