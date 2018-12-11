//X and Y speed
x += xSpd
y += ySpd

ySpd = 0;
xSpd = 0;


if keyboard_check(ord("A")) {
	xSpd = -movmentSpeed;
	image_xscale = -1;
}
if keyboard_check(ord("D")) {
	xSpd = movmentSpeed;
	image_xscale = 1;
}
if keyboard_check(ord("W")) {
	ySpd = -movmentSpeed;
}
if keyboard_check(ord("S")) {
	ySpd = movmentSpeed;
}


