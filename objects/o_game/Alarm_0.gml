/// @description Meteor
var xx = irandom_range(0,room_width);
instance_create_layer(xx,0,"Instances",o_meteor);
var spawn = 60;
// Doubles meteor spawn rate at 20 plants
if o_player.plant > 20 {
	spawn = 30;
}
// Even more meteors at 30 plants
if o_player.plant > 30 {
	spawn = 25;
}
alarm[0] = irandom_range(10,spawn);

///Adds Blazing Meteor at 25 plants
if o_player.plant > 25 {
	var i = irandom_range(1,50);
	if i > 45 {
		instance_create_layer(xx,0,"Instances",o_blazingmeteor);
	}
}

///Doubles Blazing Meteor Output at 40 plants
if o_player.plant > 40 {
	var i = irandom_range(1,50);
	if i > 45 {
		instance_create_layer(xx,0,"Instances",o_blazingmeteor);
	}
}

///Adds alien at 30 plants
if (o_player.plant == 0) {
	if alien_spawned == false {
		instance_create_layer(0,room_height/2,"Instances",o_alienboi);
	}
	alien_spawned = true;
}