

if (pauseEE) {
	var c = c_white;
	draw_text_color(room_width / 2, room_height / 2, "Paused", c, c, c, c, 1);
	exit;
} else {
	draw_self();
}


var w = c_white;
var r = c_red;
var starty = 120;
var o2x = starty + o2EE;
var topx = 120;
var topy = 100;
var plantx = starty + (plantEE * 5);


//o2
draw_rectangle_color(topx,topy,o2x,starty,r,r,r,r,false);
draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy,string(round(o2EE)),w,w,w,w,1);


//plant
var g = c_green;
var offset = 30;
draw_rectangle_color(topx,topy+offset,plantx,starty+offset,g,g,g,g,false);
draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy + offset,string(plantEE),w,w,w,w,1);

//lives

draw_set_font(f_BarCounters);
draw_text_color(topx - 20,topy + offset * 2,string(mylivesEE),w,w,w,w,1);

//Titles

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy,"Oxygen",w,w,w,w,1);

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy + offset,"Plants",w,w,w,w,1);

draw_set_font(f_BarCounters);
draw_text_color(topx - 100,topy + offset * 2,"Lives",w,w,w,w,1);
