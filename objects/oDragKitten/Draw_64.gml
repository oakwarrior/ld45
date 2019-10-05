/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (position_meeting(mouse_x, mouse_y, id)) {
   draw_set_colour(c_white);
   draw_set_font(fYosterIsland);
   draw_text(x - 16, y - 60, "Kitten");
}