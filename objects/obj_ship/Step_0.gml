/// @description Insert description here
// You can write your code in this editor

// Телепортация
if (x < -25) { x = room_width + 25 }
if (x > room_width +25) { x = -25 }
if (y < -25) { y = room_height + 25 }
if (y > room_height + 25) { y = -25 }

// Delta time (секунды)
var dt = delta_time / 1000000.0;

// Вращение
var step = (mouse_wheel_up() ? 1 : 0) - (mouse_wheel_down() ? 1 : 0);
if (invert_wheel) step = -step;
// Добавляем импульс угловой скорости
if (step != 0) {
    angular_velocity += step * wheel_sensitivity;
}
// Интеграция скорости в угол
image_angle += angular_velocity * dt;
// Демпфирование
angular_velocity *= exp(-damping * dt);
// Малый порог
if (abs(angular_velocity) < 0.02)
    angular_velocity = 0;
// Нормализация угла
image_angle = image_angle mod 360;
// Сохраняем в глобальную переменную
global.rot_angle = image_angle;

// Движение
if (sprite_index != spr_boom_big) {
	if (keyboard_check(ord("W"))) {
	    vel_x += lengthdir_x(thrust, image_angle);
	    vel_y += lengthdir_y(thrust, image_angle);
	}
	// Затухание
	vel_x *= friction;
	vel_y *= friction;
	x += vel_x;
	y += vel_y;
}

// Стрельба
if (keyboard_check(ord("D")) && ready_shoot == true) {
	audio_play_sound(snd_shoot, 5, false)
	instance_create_layer(obj_ship.x, obj_ship.y, "Instances", obj_bullet)
	ready_shoot = false;
	alarm[0] = delay_shoot * room_speed;
}

// Взрыв 
if (sprite_index == spr_boom_big) {
	image_index += 0.2;
	if (!audio_is_playing(snd_boom_big2)) {
		audio_play_sound(snd_boom_big2, 5, false)
	}
	if (image_index > 12.5) {
		room_goto(rm_gameover);
		instance_destroy();
	}
}