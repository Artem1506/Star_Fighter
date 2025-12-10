// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_array_random(array) {
	return array[ irandom(array_length(array) - 1) ];
}