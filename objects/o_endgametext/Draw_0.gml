//Endgame text
var c = c_white;
draw_set_font(f_endgametitletext);
draw_text_color(390,200,global.player_name + " died!",c,c,c,c,1);

var c = c_white;
draw_set_font(f_endgametext);
draw_text_color(390,281,"Your score: " + string(global.player_score),c,c,c,c,1);

//var c = c_white;
//draw_set_font(f_endgametext);
//draw_text_color(390,321,"Your highest:",c,c,c,c,1);