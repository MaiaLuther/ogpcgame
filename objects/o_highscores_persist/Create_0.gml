global.highscores = ds_map_create();
ini_open("Settings/savedata.ini");

var size = 11;
var key = ds_map_find_first(global.highscores);
var _score;
var _name;
for (var i = 0; i < size; i++;) {
	_score = ini_read_real("Highscores", "score" + string(i), 0);
	_name = ini_read_string("Highscores", "name" + string(i), "");
	ds_map_add(global.highscores, _name, _score);
}

ini_close();
