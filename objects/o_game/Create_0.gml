///Randomizes plant/oxygen spawn locations and sets life, name, and score values
randomize();
global.my_lives = 5;
global.player_name = "";
global.player_score = 0;
//Spawn amounts for oxygen tanks and plants
alarm[0] = 10;


repeat (5) {
	create_o2();
}

repeat (3) {
	create_plant();
}

///Meteor alarm
alarm[1] = 300;