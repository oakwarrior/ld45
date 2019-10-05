if draggable = false and x > 30 and x < 580 and y > 120 and y <510 {
var onGroundPrev = onGround;

// beginning of inherit
onGround = OnGround();

cLeft  = place_meeting(x - 1, y, oBlock); 
cRight = place_meeting(x + 1, y, oBlock);

if (cLeft) 
    wallTarget = instance_place(x - 1, y, oBlock);

if (cRight) 
    wallTarget = instance_place(x + 1, y, oBlock);



// end of inherit

// Landing after jump
if (onGround && !onGroundPrev) {
    // Squash + stretch
    xscale = 1.5;
    yscale = 0.5;
    
    // Dust particles
    for (var i = 0; i < 4; i++)
        instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
}

}