if imageDirCooldown == 0
{
if xprev > x image_xscale = -1;
else if xprev < x image_xscale = 1;
xprev = x
imageDirCooldown = 4
}

if imageDirCooldown!=0 imageDirCooldown--;