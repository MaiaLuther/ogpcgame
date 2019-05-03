//title
var c = c_black;
var scoreheight = 325;
draw_set_font(f_highscorestitletext);

//numbers 1-10
draw_set_font(f_highscorestitletext);
draw_text_color(295,113,"1",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,177,"2",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,241,"3",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,305,"4",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,368,"5",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,433,"6",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,497,"7",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,561,"8",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(295,625,"9",c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(287,689,"10",c,c,c,c,1);

//Scores

draw_text_color(scoreheight,99," " + highscore_name(1) + " " + string(highscore_value(1)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,163," " + highscore_name(2) + " " + string(highscore_value(2)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,227," " + highscore_name(3) + " " + string(highscore_value(3)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,291," " + highscore_name(4) + " " + string(highscore_value(4)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,354," " + highscore_name(5) + " " + string(highscore_value(5)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,419," " + highscore_name(6) + " " + string(highscore_value(6)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,483," " + highscore_name(7) + " " + string(highscore_value(7)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,547," " + highscore_name(8) + " " + string(highscore_value(8)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,611," " + highscore_name(9) + " " + string(highscore_value(9)),c,c,c,c,1);

draw_set_font(f_highscorestitletext);
draw_text_color(scoreheight,675," " + highscore_name(10) + " " + string(highscore_value(10)),c,c,c,c,1);