if (variable_instance_exists(self, "nothing_controllable") &&
    nothing_controllable) {
	if keyboard_check(vk_up) {
		phy_position_y -= 20;
	}
	if keyboard_check(vk_up) {
		phy_position_y += 2;
	}
	
	if keyboard_check(vk_right) {
		phy_position_x -= 5;
	}
	if keyboard_check(vk_left) {
		phy_position_x += 5;
	}
}