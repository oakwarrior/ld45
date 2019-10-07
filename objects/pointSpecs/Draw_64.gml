/// @description Insert description here
// You can write your code in this editor
//
if draw3 = false and global.startedPlaying = false
{
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(285-2,155-2,"POINTS: "+string(round(global.points))+"/"+string(instance_number(oPoint)),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(285,155,"POINTS: "+string(round(global.points))+"/"+string(instance_number(oPoint)),0.3,0.3,0)
}
if draw3 = false and global.startedPlaying = true
{
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(285-2,155-2,"POINTS: "+string(round(global.points))+"/"+string(pointso),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(285,155,"POINTS: "+string(round(global.points))+"/"+string(pointso),0.3,0.3,0)
}

