//On collision creates a new oxygen tank and destroys the oxygen tank collided with. Also resets the players o2 amount to 100
instance_destroy();
audio_play_sound(sound_oxygen,1,false);
other.o2 =+ 100;
create_o2();
