//On collisions creates a new plant and removes the plant collided with. Also increases plant score.
instance_destroy();
audio_play_sound(sound_plant,1,false);
create_plant();
o_player.plant++;
if (o_player.plant == 30) {
	instance_create_layer(0,room_height/2,"Instances",o_alienboi);
}