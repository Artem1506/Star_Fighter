/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(snd_logo)) {
	audio_play_sound(snd_logo, 1, false);
}
if (timer) {
	alarm[0] = room_speed * 1;
	timer = false; 
}

if (sc_press_any_button()) {
	audio_stop_sound(snd_logo);
	room_goto_next();
}