/// @description Insert description here
// You can write your code in this editor

var margin = 15;       // толщинa зоны за экраном
var side = irandom(3); // 0=слева, 1=справа, 2=сверху, 3=снизу

switch (side) {
    case 0: // LEFT
        asteroid_x = -margin;
        asteroid_y = irandom(room_height);
        break;
    case 1: // RIGHT
        asteroid_x = room_width + margin;
        asteroid_y = irandom(room_height);
        break;
    case 2: // TOP
        asteroid_x = irandom(room_width);
        asteroid_y = -margin;
        break;
    case 3: // BOTTOM
        asteroid_x = irandom(room_width);
        asteroid_y = room_height + margin;
        break;
}

if (room != rm_start) {
	if (!instance_exists(obj_asteroids)) {
		instance_create_layer(asteroid_x, asteroid_y, "Instances", obj_asteroids)
	}
}
if (instance_number(obj_asteroids) < (global.score / 6)) {
	instance_create_layer(asteroid_x, asteroid_y, "Instances", obj_asteroids)
}

if (comet_check == true && global.score != 0) {
	if ((irandom(100) / global.score) < 1) {
		instance_create_layer(asteroid_x, asteroid_y, "Instances", obj_comet) }
	comet_check = false;
	alarm[0] = comet_delay
}

switch (room) {
    case rm_start:
		global.score = 0;
		if (sc_press_any_button()) {
			if (!audio_is_playing(snd_click)) {
				audio_play_sound(snd_click, 5, false) }
			room_goto(rm_main) }
        break;
    case rm_gameover:
		ini_open("data.ini");
		record = ini_read_real("record", "none", 0);
		if (global.score > record) {
			ini_write_real("record", "none", global.score); }
		ini_close();
        if (sc_press_any_button()) {
			if (!audio_is_playing(snd_click)) {
				audio_play_sound(snd_click, 5, false) }
			room_goto(rm_start) }
        break;
}
