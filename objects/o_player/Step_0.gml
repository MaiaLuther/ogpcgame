//Pause feature
if (keyboard_check_released(vk_space) or gamepad_button_check_pressed(0, gp_shoulderl)) {
	if (! pause) {
		pause = true;
		instance_deactivate_all(true);
		speed = 0;
		
	} else {
		pause = false;
		instance_activate_all();
		alarm[0] = o2_tick;
	}
}

if (pause) {
	exit;
}
// check all possible game pads
// 1) If using an XBOX controller on pc/mac, then use gamepad 0.
// 2) If using the gamedevice on iPhone, then use gamepad 4.
var gp_up = 0;
var gp_down = 0;
var gp_left = 0;
var gp_right = 0;
var i;
for (i = 0; i < 12; i++) {
	if gamepad_button_check(i, gp_padu) {
		gp_up = 1;
	}
	if gamepad_button_check(i, gp_padd) {
		gp_down = 1;
	}
	if gamepad_button_check(i, gp_padl) {
		gp_left = 1;
	}
	if gamepad_button_check(i, gp_padr) {
		gp_right = 1;
	}
}

//WASD keys
var up = keyboard_check(vk_up) 
		or keyboard_check(ord("W")) or gp_up;
var right = keyboard_check(vk_right) 
		or keyboard_check(ord("D")) or gp_right;
var left = keyboard_check(vk_left) 
		or keyboard_check(ord("A")) or gp_left;
var down = keyboard_check(vk_down) 
		or keyboard_check(ord("S")) or gp_down;
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

//Lets you go to opposite sides of the room
move_wrap(true,true,36);

