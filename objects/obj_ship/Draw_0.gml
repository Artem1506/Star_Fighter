/// @description Insert description here
// You can write your code in this editor

draw_self();

if (sprite_index != spr_boom_big) {
	if (keyboard_check(ord("W"))) {
		image_index += 0.3;
	    sprite_index = spr_ship_boost;
	} else { 
		sprite_index = spr_ship_stay 
	}
}
