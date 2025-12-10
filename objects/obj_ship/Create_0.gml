/// @description Insert description here
// You can write your code in this editor

wheel_sensitivity = 80;  // чувствительность колеса
angular_velocity = 0;
damping = 6;             // демпфирование вращения
invert_wheel = false;

// --- Параметры движения ---
vel_x  = 0;      // текущий импульс по X
vel_y  = 0;      // текущий импульс по Y
thrust = 0.10;   // ускорение при нажатии W
friction = 0.98; // затухание импульса (1 — без затухания, 0 — мгновенная остановка)

//move_speed = 4;          // скорость движения вперёд

global.rot_angle = undefined; 

ready_shoot = true;
delay_shoot = 0.5;

sprite_index = spr_ship_stay;