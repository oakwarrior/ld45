if(instance_number(oEnemy) <= 0){
	
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.hitPoints += 10;
	global.enemySpeed += 0.1;
	spawn_rate -= 2.5;
	alarm[0] = spawn_rate;
	
}

alarm[1] = room_speed * 5;