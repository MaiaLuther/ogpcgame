var gp_enter = 0;
var i;
for (i = 0; i < 12; i++) {
	if gamepad_button_check_pressed(i, gp_shoulderr)
		or gamepad_button_check_pressed(i, gp_shoulderrb) {
		gp_enter = 1;
	}
}
if gp_enter { 
	room_goto(rm_easteregg);
}