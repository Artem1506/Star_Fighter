// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_press_any_button() {

	// КЛАВИАТУРА
	var keylist = [
		vk_space, vk_enter, vk_shift, vk_control, vk_alt,
        vk_escape,
        ord("A"), ord("B"), ord("C"), ord("D"), ord("E"), ord("F"), ord("G"),
        ord("H"), ord("I"), ord("J"), ord("K"), ord("L"), ord("M"), ord("N"),
        ord("O"), ord("P"), ord("Q"), ord("R"), ord("S"), ord("T"), ord("U"),
        ord("V"), ord("W"), ord("X"), ord("Y"), ord("Z"),
        vk_left, vk_right, vk_up, vk_down,
        vk_numpad0, vk_numpad1, vk_numpad2, vk_numpad3, vk_numpad4,
        vk_numpad5, vk_numpad6, vk_numpad7, vk_numpad8, vk_numpad9
    ];

    for (var i = 0; i < array_length(keylist); i++) {
        if (keyboard_check_pressed(keylist[i])) return true;
    }
    // МЫШЬ
    if (mouse_check_button_pressed(mb_left))   return true;
    if (mouse_check_button_pressed(mb_right))  return true;
    if (mouse_check_button_pressed(mb_middle)) return true;
    // ВИРТУАЛЬНАЯ КЛАВИАТУРА
    if (device_mouse_check_button_pressed(0, mb_left)) return true;  // тапы

    if (device_get_tilt_x() != 0 || device_get_tilt_y() != 0) {
    // игнорируем гироскоп — не нужна активация 
	}
    // Нажатия виртуальных кнопок через device_mouse считаются "кликами"
    if (device_mouse_check_button_pressed(0, mb_left)) return true;
		return false;
}
