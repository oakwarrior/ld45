if(instance_exists(objectToShoot)){
	if global.startedPlaying = true
	{
	var bullet = instance_create_depth(x,y,-9,oBullet);	
	bullet.speed = 1;
	bullet.direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
	var dd = point_direction(x,y,objectToShoot.x,objectToShoot.y);
	var ss = 1
	with (bullet)
	{
	motion_add(dd, ss);
	}
	}
	alarm[0] = fire_rate;
} else {
	shooting = false;
}