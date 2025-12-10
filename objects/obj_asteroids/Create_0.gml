/// @description Insert description here
// You can write your code in this editor

var sprites = [spr_asteroid_1, spr_asteroid_2, spr_asteroid_3];
sprite_index = sc_array_random(sprites);

move_spd = 2;
rotation_spd = 1; // скорость вращения
rotation_dir = choose(-1, 1); // случайное направление
direction = irandom(359); // случайный угол направления

play_snd = true;