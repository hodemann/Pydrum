//X og Y fart
x += xSpd
y += ySpd

if keyboard_check(ord("A")) {
	xSpd = -3;
	image_xscale = -1
}
else if keyboard_check(ord("D")) {
	xSpd = 3;
	image_xscale = 1
}
else if keyboard_check(ord("W")) {
	ySpd = -3;
}
else if keyboard_check(ord("S")) {
	ySpd = 3;
}
else {
	xSpd = 0;
	ySpd = 0;
}