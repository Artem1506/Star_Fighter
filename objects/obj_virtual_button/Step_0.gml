/// @description Insert description here
// You can write your code in this editor

right_down = false;
left_down = false;
shoot_down = false;
boost_down = false;
exit_down = false;

//var mx = device_mouse_x_to_gui(0);
//var my = device_mouse_y_to_gui(0);
	
if (device_mouse_check_button(0, mb_left)) {
	if (point_in_rectangle(
		mouse_x, mouse_y,
		btn_right.x1s, btn_right.y1s,
		btn_right.x2s, btn_right.y2s
	)) { right_down = true; }

	if (point_in_rectangle(
		mouse_x, mouse_y,
		btn_left.x1s, btn_left.y1s,
		btn_left.x2s, btn_left.y2s
	)) { left_down = true; }

	if (point_in_rectangle(
		mouse_x, mouse_y,
		btn_shoot.x1s, btn_shoot.y1s,
		btn_shoot.x2s, btn_shoot.y2s
	)) { shoot_down = true; }

	if (point_in_rectangle(
		mouse_x, mouse_y,
		btn_boost.x1s, btn_boost.y1s,
		btn_boost.x2s, btn_boost.y2s
	)) { boost_down = true; }

	/*if (point_in_rectangle(
		mouse_x, mouse_y,
		btn_exit.x1s, btn_exit.y1s,
		btn_exit.x2s, btn_exit.y2s
	)) { exit_down = true; }*/
}	
