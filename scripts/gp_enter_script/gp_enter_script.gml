var gp_enter = 0;
var i;
for (i = 0; i < 12; i++) {
	if gamepad_button_check_pressed(i, gp_shoulderr)
		or gamepad_button_check_pressed(i, gp_shoulderrb) {
		gp_enter = 1;
	}
}
if gp_enter { 
	if room == rm_startpage {
		room_goto(rm_main);
	}
	if room == rm_endgame {
		room_goto(rm_endgame);
	}
	if room == rm_endgame {
		room_goto(rm_highscoreinput);
	}
	if room == rm_highscoreinput {
		room_goto(rm_highscores);
	}
	if room == rm_highscores {
		room_goto(rm_startpage);
	}
}