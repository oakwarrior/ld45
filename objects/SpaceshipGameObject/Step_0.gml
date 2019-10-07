if (variable_instance_exists(self, "nothing_controllable") && nothing_controllable) {
	if mouse_x > 30 and mouse_x < 580 and mouse_y > 120 and mouse_y <510 {			
		distance = point_distance(phy_position_x, phy_position_y, mouse_x, mouse_y)
	
		phy_position_x += distance * 0.01 * sin(degtorad(phy_rotation))
		phy_position_y += -1 * distance * 0.01 * cos(degtorad(phy_rotation))
	
		phy_rotation = -point_direction(phy_position_x, phy_position_y, mouse_x, mouse_y) + 90
	}
}

if global.startedPlaying = true
{
for (var k = 0 ; k < ds_grid_height(global.enemyTable) ; k++)
{
if place_meeting(x-4,y,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x+4,y,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x,y-4,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x,y+4,ds_grid_get(global.enemyTable,0,k))
{
with (ds_grid_get(global.enemyTable,0,k))
{
if global.goalLife = true
{
global.livesQty -=1	
audio_play_sound(snd_oof, 1, false);
}
instance_destroy()
}
}
}
}


