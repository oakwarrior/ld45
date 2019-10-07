/// @description  Variables
event_inherited()
// Inherit Entity
jumped = false;
landed = false;

platformTarget = 0;
wallTarget     = 0;

// Velocity
vx = 0;
vy = 0;

// Used for sub-pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
cLeft    = place_meeting(x - 1, y, oBlock);
cRight   = place_meeting(x + 1, y, oBlock);

// end of inherit

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 7.50;
vyMax       = 16.0;
jumpHeight  = 11.20;
gravNorm    = 0.66;
gravSlide   = 0.33; 
draw = false
ui_template_var2 = true
object_player = true
clingTime   = 4.0;

// Misc ///////////////////////////////////////////////////////////////////////

// States
IDLE      = 10;
RUN       = 11;
JUMP      = 12;

// Initialize properties
state  = IDLE;
//facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = image_xscale;
yscale = image_yscale;

///////////////////////////////////////////////////////////////////////////////

// Legacy code, haha
sticking = false

isTransformed = false;