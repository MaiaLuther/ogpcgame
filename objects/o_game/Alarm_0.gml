/// @description Meteor
var xx = irandom_range(0,room_width);
instance_create_layer(xx,0,"Instances",o_meteor);
var spawn = 60;
// Doubles meteor spawn rate
if o_player.plant > 20 {
	spawn = 30;
}
// Even more meteors
if o_player.plant > 30 {
	spawn = 25;
}
alarm[0] = irandom_range(10,spawn);