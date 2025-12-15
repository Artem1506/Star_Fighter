/// @description Insert description here
// You can write your code in this editor

// Телепортация
if (x < -20) { x = room_width + 20 }
if (x > room_width +20) { x = -20 }
if (y < -20) { y = room_height + 20 }
if (y > room_height + 20) { y = -20 }

// Delta time (секунды)
var dt = delta_time / 1000000.0;

// Вращение
var wheel_step = (mouse_wheel_up() ? 1 : 0) - (mouse_wheel_down() ? 1 : 0);
var key_step = (keyboard_check(vk_left) - keyboard_check(vk_right)) / 2 ;
var virtual_key_step = (obj_virtual_button.left_down - obj_virtual_button.right_down) / 2 ;
if (invert_wheel) wheel_step = -wheel_step;
var step = wheel_step + key_step + virtual_key_step;
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
	if (keyboard_check(ord("W")) || obj_virtual_button.boost_down == true) {
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
if ((keyboard_check(ord("D")) || obj_virtual_button.shoot_down == true) && ready_shoot == true) {
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