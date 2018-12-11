//X and Y speed
x += xSpd
y += ySpd

ySpd = 0;
xSpd = 0;

//Bevegelse og "veggsjekker"
if keyboard_check(ord("A")) {
	if(place_free(x - movmentSpeed, y)) {
		xSpd = -movmentSpeed;
	}
	image_xscale = -1;
}
if keyboard_check(ord("D")) {
	if(place_free(x + movmentSpeed, y)) {
		xSpd = movmentSpeed;
	}
	image_xscale = 1;
}
if keyboard_check(ord("W")) {
	if(place_free(x, y - movmentSpeed)) {
		ySpd = -movmentSpeed;
	}
}
if keyboard_check(ord("S")) {
	if(place_free(x ,y + movmentSpeed)) {
		ySpd = movmentSpeed;
	}
}


