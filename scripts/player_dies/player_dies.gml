global.my_lives = global.my_lives-1;
//room_restart();
if (global.my_lives <= 0) {
	room_restart();
}
x = room_width/2;
y = room_height/2;

audio_play_sound(sound_crash,1,false);
