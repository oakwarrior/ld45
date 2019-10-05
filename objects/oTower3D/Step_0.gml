x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,oRegion) or place_meeting(x,y,oTowerParent)) {
	colorTD = c_red;
} else {
	colorTD = c_white;
}