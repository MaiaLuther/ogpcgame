//Sets the spawn point as random and makes it so the smaller the meteor the faster it moves
var thescale = random_range(0.5,2);
direction = irandom_range(181,359);
image_xscale = thescale;
image_yscale = thescale;
image_angle = irandom_range(0,359);
speed = 1/thescale * 3;