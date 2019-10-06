/// @description Insert description here
// You can write your code in this editor
if alpha = true
{
draw_sprite_ext(self.sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
else
{
draw_sprite_ext(self.sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,0.5)
}
		if x > 30 and x <580
		and y > 120 and y <510
		{
		draw_sprite_ext(border_sprite,0,x-5,y-5,image_xscale*1.02,image_yscale*1.02,0,c_white,1)
		}