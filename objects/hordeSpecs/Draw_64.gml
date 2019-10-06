/// @description Insert description here
// You can write your code in this editor
//
if draw6 = false //and global.startedPlaying = false
{
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)

draw_text_transformed(300- string_width("ENEMIES: ")*0.3 +string_width("100 ")*0.3-90-2,480-2,"ENEMIES: "+string(round(global.spawn_amount)),0.3,0.3,0)
draw_text_transformed(300-2,480-2,"HP: "+string(round(global.hitPoints)),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(300- string_width("ENEMIES: ")*0.3 +string_width("100 ")*0.3-90,480,"ENEMIES: "+string(round(global.spawn_amount)),0.3,0.3,0)
draw_text_transformed(300,480,"HP: "+string(round(global.hitPoints)),0.3,0.3,0)
}
/*
if draw3 = false and global.startedPlaying = true
{
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color($321238)
draw_text_transformed(300-2,140-2,"POINTS: "+string(round(global.points))+"/"+string(pointso),0.3,0.3,0)
draw_set_color(c_white)
draw_text_transformed(285,140,"POINTS: "+string(round(global.points))+"/"+string(pointso),0.3,0.3,0)
}

