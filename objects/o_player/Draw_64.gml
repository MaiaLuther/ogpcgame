draw_self();
var w = c_white;
var r = c_red;
var starty = 120;
var o2x = starty + o2;
var topx = 120;
var topy = 100;
var plantx = starty + (plant * 5);


//o2
draw_rectangle_color(topx,topy,o2x,starty,r,r,r,r,false);
draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy,string(o2),w,w,w,w,1);


//plant
var g = c_green;
var offset = 30;
draw_rectangle_color(topx,topy+offset,plantx,starty+offset,g,g,g,g,false);
draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy + offset,string(plant),w,w,w,w,1);

//lives

draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy + offset * 2,string(global.my_lives),w,w,w,w,1);

//Titles

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy,"Oxygen",w,w,w,w,1);

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy + offset,"Plants",w,w,w,w,1);

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy + offset * 2,"Lives",w,w,w,w,1);
