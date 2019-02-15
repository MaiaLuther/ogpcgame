var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var our_speed = 10;
var xx = 0;
var yy = 0;

if (right) {
	xx = x + our_speed;
	image_angle = image_angle - 10;
}

if (left) {
	xx = x - our_speed; 
	image_angle = image_angle + 10;
}

if (up) {
	yy = y - our_speed;
	motion_add(image_angle, 0.05);
}

if (down) {
	yy = y + our_speed;
}

//Room Walls
if (xx != 0) {
	x = xx;
	o2 -= o2_per_move;
}

if (yy != 0) {
	y = yy;
	o2 -= o2_per_move;
}

//When you run out of oxygen you die
if (o2 <= 0) {
	player_dies();
}

move_wrap(true,true,32);