/// @description Insert description here
// You can write your code in this editor

draw_set_font(f_score);

if (room == rm_main) {
	draw_text(5, 5, ("SCORE: " + string(global.score)));
}

if (room == rm_gameover) {
	draw_set_colour(c_lime);
	draw_text(135, 100, ("SCORE: " + string(global.score)));
	draw_set_colour(c_aqua);
	draw_text(125, 140, ("RECORD: " + string(record)));
	draw_set_colour(c_white);
}
if (room == rm_gameover || room == rm_start) {
	if (anim_time = true) {
		anim_time = false
		alarm[1] = room_speed * 1; }
	if (show_text == true) {
		draw_text(155, 215, ("PRESS"));
		draw_text(120, 245, ("ANY BUTTON"));
	}
}
