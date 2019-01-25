var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var down = keyboard_check(vk_down);
var our_speed = 10;

if (right) {
	x += our_speed;
}

if (left) {
	x -= our_speed;
}

if (up) {
	y -= our_speed;
}

if (down) {
	y += our_speed;
}