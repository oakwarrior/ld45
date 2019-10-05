/// @description  Movement

// Input //////////////////////////////////////////////////////////////////////
event_inherited()
if draggable = false and x > 30 and x < 680 and y > 120 and y <620 {
var kLeft, kRight, kUp, kDown, kJump, kJumpRelease;

kLeft        = keyboard_check(vk_left)           || gamepad_axis_value(0, gp_axislh) < -0.40;
kRight       = keyboard_check(vk_right)          || gamepad_axis_value(0, gp_axislh) >  0.40;
kUp          = keyboard_check(vk_up)             || gamepad_axis_value(0, gp_axislv) < -0.40;
kDown        = keyboard_check(vk_down)           || gamepad_axis_value(0, gp_axislv) >  0.75; // Test new values

kJump        = keyboard_check_pressed(ord("Z"))  || gamepad_button_check_pressed(0, gp_face1);
kJumpRelease = keyboard_check_released(ord("Z")) || gamepad_button_check_released(0, gp_face1);

// Movement ///////////////////////////////////////////////////////////////////

// Apply the correct form of acceleration and friction
var tempAccel, tempFric;

if (onGround) {  
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}

// Wall cling to avoid accidental push-off
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
} else if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
    sticking = true; 
    canStick = false;       
}

// Handle gravity
if (!onGround) {
    if ((cLeft || cRight) && vy >= 0) {
        // Wall slide
        vy = Approach(vy, vyMax * 0.33, gravSlide);
    } else {
        // Fall normally
        vy = Approach(vy, vyMax, gravNorm);
    }
}

// Left 
if (kLeft && !kRight && !sticking) {
    facing = -1;
    state  = RUN;
    
    // Apply acceleration left
    if (vx > 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, -vxMax, tempAccel);
// Right
} else if (kRight && !kLeft && !sticking) {
    facing = 1;
    state  = RUN;
    
    // Apply acceleration right
    if (vx < 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, vxMax, tempAccel);
}

// Friction
if (!kRight && !kLeft) {
    vx    = Approach(vx, 0, tempFric);
    state = IDLE;
} 

// Wall jump
if (kJump && cLeft && !onGround) {   
    xscale = 0.5;
    yscale = 1.5;
                    
    for (var i = 0; i < 4; i++)
        instance_create(bbox_left, random_range(bbox_top, bbox_bottom), oFxDust);
                 
    // Wall jump is different when pushing off/towards the wall        
    if (kLeft) {
        vx = jumpHeight * .75;
        vy = -jumpHeight * 1.1;
    } else {
        vx = vxMax;    
        vy = -jumpHeight * 1.1;
    }  
} else if (kJump && cRight && !onGround) {   
    xscale = 0.5;
    yscale = 1.5;

    for (var i = 0; i < 4; i++)
        instance_create(bbox_right, random_range(bbox_top, bbox_bottom), oFxDust);
                               
    // Wall jump is different when pushing off/towards the wall  
    if (kRight) {
        vx = -jumpHeight * .75;
        vy = -jumpHeight * 1.1;
    } else {
        vx = -vxMax;    
        vy = -jumpHeight * 1.1;
    }  
}

// Jump 
if (kJump) {
    // THIS LINE HAS BEEN EDITED TO ALLOW FOR MULTI JUMPS 
    if (1) {//onGround) {
        // Fall thru platform
        if (kDown) && (place_meeting(x, y + 1, oParJumpThru) && !place_meeting(x, y + 1, oParSolid)) {
                ++y;
        // Normal jump
        } else {
            xscale = 0.5;
            yscale = 1.5;
            
            for (var i = 0; i < 4; i++)
                instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
            
            vy = -jumpHeight;
        }
    }
// Variable jumping
} else if (kJumpRelease) { 
    if (vy < 0)
        vy *= 0.25;
}

// Jump state check
if (!onGround) {
    state = JUMP;
    
    if (cLeft)
        facing = 1;
    if (cRight)
        facing = -1;
}


/// @description Insert description here
// You can write your code in this editor
for (var k = 0 ; k < ds_grid_height(global.enemyTable) ; k++)
{
if place_meeting(x-4,y,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x+4,y,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x,y-4,ds_grid_get(global.enemyTable,0,k))
or place_meeting(x,y+4,ds_grid_get(global.enemyTable,0,k))
{
with (ds_grid_get(global.enemyTable,0,k))
{
if global.goalLife = true
{
global.livesQty -=1	
}
instance_destroy()
}
}
}


}