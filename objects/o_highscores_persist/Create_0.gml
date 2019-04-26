ini_open("Settings/savedata.ini");
global.score1 = ini_read_real("Highscores", "score1", 0);
global.name1 = ini_read_string("Highscores", "name1", "");
ini_close();
