/// @description Insert description here
// You can write your code in this editor

// Телепортация
if (x < -25) { x = room_width + 25 }
if (x > room_width +25) { x = -25 }
if (y < -25) { y = room_height + 25 }
if (y > room_height + 25) { y = -25 }

image_angle = direction;

// Двигаем объект по прямой

x += lengthdir_x(move_spd, direction);
y += lengthdir_y(move_spd, direction);

if (sprite_index == spr_boom_small) {
	if (play_snd == true) {
		audio_play_sound(snd_boom_small, 5, false) }
	play_snd = false;
	image_index += 0.2;
	if (image_index > 4.5) {
		global.score += 3;
		instance_destroy();
	}
}
