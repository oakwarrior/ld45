if nothing_controllable {
	if keyboard_check(vk_up) {
		phy_position_y -= 3;
	}
	if keyboard_check(vk_down) {
		phy_position_y += 3;
	}

	if keyboard_check(vk_right) {
		phy_position_x += 3;
	}
	if keyboard_check(vk_left) {
		phy_position_x -= 3;
	}
}