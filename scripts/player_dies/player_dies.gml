audio_play_sound(sound_crash,1,false);
o_player.mylives = o_player.mylives - 1;
//Sets oxygen to 100 when you die (fixes a glitch)
o_player.o2 = o_player.start_o2;
//room_restart();
if (o_player.mylives <= 0) {
	global.player_score = o_player.plant;
	room_goto(rm_highscoreinput);
}
//x = room_width/2;
//y = room_height/2;

//audio_play_sound(sound_crash,1,false);
var d = instance_create_layer(room_width/2, room_height/2, "Instances", o_die);
d.image_alpha = 0.6;
var _scale = 20;
d.image_xscale = _scale;
d.image_yscale = _scale;
d.alarm[0] = 1 * room_speed;