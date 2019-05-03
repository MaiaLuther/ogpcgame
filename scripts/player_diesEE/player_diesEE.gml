audio_play_sound(sound_crash,1,false);
o_playerTeleporter.mylivesEE = o_playerTeleporter.mylivesEE - 1;
//Sets oxygen to 100 when you die (fixes a glitch)
o_playerTeleporter.o2EE = o_playerTeleporter.start_o2EE;
//room_restart();
if (o_playerTeleporter.mylivesEE <= 0) {
		room_goto(rm_startpage);
}

//audio_play_sound(sound_crash,1,false);
var d = instance_create_layer(room_width/2, room_height/2, "Instances", o_die);
d.image_alpha = 0.6;
var _scale = 20;
d.image_xscale = _scale;
d.image_yscale = _scale;
d.alarm[0] = 1 * room_speed;