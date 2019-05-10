//Pause feature
if (keyboard_check_released(vk_space) or gamepad_button_check_pressed(0, gp_shoulderl)) {
	if (! pauseEE) {
		pauseEE = true;
		instance_deactivate_all(true);
		speed = 0;
		
	} else {
		pauseEE = false;
		instance_activate_all();
	}
}

if (pauseEE) {
	exit;
}

//WASD keys
var up = keyboard_check(vk_up) 
		or keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu);
var right = keyboard_check(vk_right) 
		or keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr);
var left = keyboard_check(vk_left) 
		or keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl);
var down = keyboard_check(vk_down) 
		or keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd);
var teleport = keyboard_check(ord("T")) or gamepad_button_check_pressed(0, gp_shoulderr);
var our_speed = 10;
var xx = 0;
var yy = 0;

//Movement
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
	o2EE -= o2_per_moveEE;
}

if (yy != 0) {
	y = yy;
	o2EE -= o2_per_moveEE;
}

if (teleport) {
	x = irandom_range(0,room_width);
	y = irandom_range(0,room_height);
}

//When you run out of oxygen you die
if (o2EE <= 0) {
	player_diesEE();
}

//Lets you move from opposite sides of the room
move_wrap(true,true,36);

