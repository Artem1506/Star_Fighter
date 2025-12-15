/// @description Insert description here
// You can write your code in this editor

resize_x = (global.width - room_width) / 2
resize_y = (global.height - room_height) / 2

size_button = 96;

btn_right = {
	x1: resize_x + room_width - size_button,
	x1s: room_width - size_button,
	y1: resize_y + room_height - size_button,
	y1s: room_height - size_button,
	x2: resize_x + room_width,
	x2s: room_width,
	y2: resize_y + room_height,
	y2s: room_height
}
btn_left = { 
	x1: resize_x + room_width - (size_button*2),
	x1s: room_width - (size_button*2),
	y1: resize_y + room_height - size_button,
	y1s: room_height - size_button,
	x2: resize_x + room_width - size_button,
	x2s: room_width - size_button,
	y2: resize_y + room_height,
	y2s: room_height
}
btn_shoot = {
	x1: resize_x,
	x1s: 0,
	y1: resize_y + (room_height/2),
	y1s: (room_height/2),
	x2: resize_x + size_button,
	x2s: size_button,
	y2: resize_y + (room_height/2) + size_button,
	y2s: (room_height/2) + size_button
}
btn_boost = {
	x1: resize_x,
	x1s: 0,
	y1: resize_y + (room_height/2) + size_button,
	y1s: (room_height/2) + size_button,
	x2: resize_x + size_button,
	x2s: size_button,
	y2: resize_y + (room_height/2) + (size_button*2),
	y2s: (room_height/2) + (size_button*2)
}
btn_exit = {
	x1: resize_x + room_width - size_button,
	x1s: room_width - size_button,
	y1: resize_y,
	y1s: 0,
	x2: resize_x + room_width,
	x2s: room_width,
	y2: resize_y + size_button,
	y2s: size_button
}

right_down = false;
left_down = false;
shoot_down = false;
boost_down = false;
exit_down = false;
