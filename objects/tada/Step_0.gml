if (instance_exists(parent) == false) {
	instance_destroy(self)
	return
}

x = parent.x
y = parent.y

