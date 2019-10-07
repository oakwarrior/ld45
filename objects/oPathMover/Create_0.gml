//event_inherited();
obj_enemy = true
show_debug_message("id " + string(id))
tornado_blocker = true
ui_template_var2 = true
xp = x;
yp = y;
hp = global.hitPoints;
vx = 0;
vy = 0;

cx = 0;
cy = 0;
if global.spawn_amount > 1
{
Once = false
}
else
{
Once = true	
}
// Whether or not to reverse at the end of path
reverse = false; 

path = pTest0
//pTest0

// Starting pos
pPos = 0;
// Path speed
pSpd = 1
// Forward or reverse
pDir = 1.0;
// Currently moving
pMov = true; 

isTransformed = false;

rando = irandom(2);
if(rando == 1) {
	sprite_index = Dog2;
}
else if(rando == 2) {
	sprite_index = Dog3;
}