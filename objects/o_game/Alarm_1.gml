/// @description Blazing Meteor
var xx = irandom_range(0,room_width);
instance_create_layer(xx,0,"Instances",o_blazingmeteor);
var spawn = 5 * room_speed;
// Doubles meteor spawn rate
//if o_player.plant > 2 {
//	spawn = spawn/2;
//}
alarm[1] = irandom_range(spawn/4,spawn);
if o_player.plant > 3 {
	alarm[1] = irandom_range(spawn/4,spawn);
}