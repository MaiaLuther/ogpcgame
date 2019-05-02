//On collisions creates a new plant and removes the plant collided with. Also increases plant score.
instance_destroy();
audio_play_sound(sound_plant,1,false);
create_plant();
o_player.plant++;