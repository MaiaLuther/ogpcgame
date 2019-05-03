audio_play_sound(sound_crash,1,false);
o_playerTeleporter.mylivesEE = o_playerTeleporter.mylivesEE - 1;
//Sets oxygen to 100 when you die (fixes a glitch)
o_playerTeleporter.o2EE = o_playerTeleporter.start_o2EE;
//room_restart();
if (o_playerTeleporter.mylivesEE <= 0) {
		room_goto(rm_startpage);
}
x = room_width/2;
y = room_height/2;

//audio_play_sound(sound_crash,1,false);
