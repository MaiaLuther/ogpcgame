/// @description Create virtual arrows

var offset = 128;
var xx = (room_width / 2) - (offset / 2);
var yy = room_height - offset - 32;

show = false;

// define the instances
virtual_arrow_left = instance_create_layer(xx, yy + offset / 2, "Instances", o_virtual_arrow);
virtual_arrow_up = instance_create_layer(xx + offset / 2, yy, "Instances", o_virtual_arrow);
virtual_arrow_down = instance_create_layer(xx + offset / 2, yy + offset, "Instances", o_virtual_arrow);
virtual_arrow_right = instance_create_layer(xx + offset, yy + offset / 2, "Instances", o_virtual_arrow);
virtual_button = instance_create_layer(xx + offset / 2, yy + offset / 2, "Instances", o_virtual_button);

// rotate the sprite accordingly
virtual_arrow_up.image_angle = 90;
virtual_arrow_down.image_angle = 270;
virtual_arrow_left.image_angle = 180;

// add a "dir" to each
virtual_arrow_left.dir = "left";
virtual_arrow_right.dir = "right";
virtual_arrow_up.dir = "up";
virtual_arrow_down.dir = "down";

// do not let it draw the first frame
virtual_arrow_left.visible = show;
virtual_arrow_up.visible = show;
virtual_arrow_down.visible = show;
virtual_arrow_right.visible = show;
virtual_button.visible = show;