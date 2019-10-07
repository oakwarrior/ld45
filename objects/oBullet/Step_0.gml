show_debug_message("point direction " + string(direction))
if place_meeting(x,y,ui_template_collider)
{
instance_destroy()	
}

if place_meeting(x,y,oPathMover)
{
alarm[0]=1	

}

if direction >0 and direction < 90
{
x += speed * (90-direction)/10
y -= speed * (0+direction)/10
}
if direction >90 and direction < 180
{
x += speed * (90-direction)/10
y -= speed * (direction-90)/10
}
if direction >180 and direction < 270
{
x -= speed * (270-direction)/10
y += speed * (direction-180)/10
}
if direction >270 and direction < 360
{
x += speed * (direction-270)/10
y += speed * (360-direction)/10
}
if direction = 0
{
x+= speed*4.5
y +=speed*0
}
if direction = 90
{
x+= speed*0
y -=speed*4.5
}
if direction = 180
{
x -= speed*4.5
y +=speed*0
}
if direction = 270
{
x-= speed*0
y +=speed*4.5
}

