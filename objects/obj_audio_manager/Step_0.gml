/// @description Insert description here
// You can write your code in this editor

if (room != last_room) {
	audio_stop_sound(current_audio);
	get_audio_track = true;
	last_room = room;
}

if (get_audio_track == true) {
	if (room == rm_start) {
		current_audio = sc_array_random(snd_start);
	}
	if (room == rm_main) {
		current_audio = sc_array_random(snd_main);
	} 
	if (room == rm_gameover) {
		current_audio = sc_array_random(snd_gameover);
	}
	audio_play_sound(current_audio, 10, false)
	get_audio_track = false
}

if (!audio_is_playing(current_audio)) {
	get_audio_track = true; 
}
