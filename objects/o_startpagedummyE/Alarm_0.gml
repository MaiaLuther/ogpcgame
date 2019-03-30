teleport -= teleport_per_cycle;
alarm[0] = teleport_tick;
//image_angle = image_angle + spin_tick;

if(alarm[0] <= 1) {
	x = irandom_range(0,room_width);
	y = irandom_range(0,room_height);
}

alarm[0] = 75;