/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(snd_logo)) {
	audio_play_sound(snd_logo, 1, false);
}
if (timer) {
	alarm[0] = room_speed * 3;
	timer = false; 
}
