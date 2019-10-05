/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font0)
draw_set_color(c_white)
draw_sprite_ext(self.sprite_index,0,x-5,y-5,image_xscale,image_yscale,0,$4e4b45,1)
draw_self()
draw_set_color($321238)
draw_text_transformed(x-2,y-2,"PLAY",0.6,0.6,0)
draw_set_color(c_white)
draw_text_transformed(x,y,"PLAY",0.6,0.6,0)