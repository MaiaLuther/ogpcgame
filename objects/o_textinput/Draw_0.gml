// @description Draw text box
draw_self();
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_textbox);
draw_text(x, y, message + _cursor);
draw_set_color(c_white);
draw_text(x - (16 * string_length(label)), y, label);