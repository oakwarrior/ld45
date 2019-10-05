if (instance_exists(parent) == false) {
	instance_destroy(self)
	return
}

x = parent.x - 4
y = parent.y - 4
