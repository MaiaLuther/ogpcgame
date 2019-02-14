draw_self();
var w = c_white;
var r = c_red;
var starty = 120;
var yy = starty + o2;
draw_rectangle_color(120,100,yy,starty,r,r,r,r,false);
draw_set_font(f_o2);
draw_text_color(100,100,string(o2),w,w,w,w,1);
//draw_text_color(x,y+10,string(global.my_lives),c,c,c,c,1);