var thescale = random_range(0.5,2);
direction = irandom_range(181,359);
image_xscale = thescale;
image_yscale = thescale;
image_angle = irandom_range(0,359);
//other method of doing line 12
//if (thescale > 1.0) {
//	speed = irandom_range(1,5);
//} else {
//	speed = irandom_range(1,10);
//}
speed = 1/thescale * 5;