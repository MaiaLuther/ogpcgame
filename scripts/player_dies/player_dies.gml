audio_play_sound(sound_crash,1,false);
o_player.mylives = o_player.mylives - 1;
//Sets oxygen to 100 when you die (fixes a glitch)
o_player.o2 = o_player.start_o2;
//room_restart();
if (o_player.mylives <= 0) {
	global.player_score = o_player.plant;
	room_goto(rm_highscoreinput);
}
x = room_width/2;
y = room_height/2;

//audio_play_sound(sound_crash,1,false);
