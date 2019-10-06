/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_ext_transformed_color(x-2,y+sprite_get_height(self.sprite_index)/2*image_yscale+6-2,txt,48,sprite_get_width(self.sprite_index)*image_xscale,0.18,0.18,0,c_black,c_black,c_black,c_black,0.8)
draw_text_ext_transformed_color(x,y+sprite_get_height(self.sprite_index)/2*image_yscale+6,txt,48,sprite_get_width(self.sprite_index)*image_xscale,0.18,0.18,0,c_white,c_white,c_white,c_white,0.8)