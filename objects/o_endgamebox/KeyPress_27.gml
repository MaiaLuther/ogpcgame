ini_open("Settings/savedata.ini");
ini_write_real("Highscores", "score1", global.player_score);
ini_write_string("Highscores", "name1", global.player_name);
ini_close();
room_goto(rm_highscores);
