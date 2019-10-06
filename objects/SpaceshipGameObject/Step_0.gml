if (variable_instance_exists(self, "nothing_controllable") && nothing_controllable) {
	if mouse_x > 30 and mouse_x < 580 and mouse_y > 120 and mouse_y <510 {			
		distance = point_distance(phy_position_x, phy_position_y, mouse_x, mouse_y)
	
		phy_position_x += distance * 0.01 * sin(degtorad(phy_rotation))
		phy_position_y += -1 * distance * 0.01 * cos(degtorad(phy_rotation))
	
		phy_rotation = -point_direction(phy_position_x, phy_position_y, mouse_x, mouse_y) + 90
	}
}
