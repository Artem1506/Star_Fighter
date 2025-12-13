/// @description Insert description here
// You can write your code in this editor

// Телепортация
if (x < -20) { x = room_width + 20 }
if (x > room_width +20) { x = -20 }
if (y < -20) { y = room_height + 20 }
if (y > room_height + 20) { y = -20 }

image_angle += rotation_dir * rotation_spd;

// Двигаем объект по прямой

x += lengthdir_x(move_spd, direction);
y += lengthdir_y(move_spd, direction);

if (sprite_index == spr_boom_small) {
	if (play_snd == true) {
		audio_play_sound(snd_boom_small, 5, false) }
	play_snd = false;
	image_index += 0.2;
	if (image_index > 4.5) {
		global.score ++;
		instance_destroy();
	}
}
