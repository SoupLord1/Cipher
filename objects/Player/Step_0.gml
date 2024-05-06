/// @description Insert description here
// You can write your code in this editor
// Movement


if keyboard_check(vk_up) or keyboard_check(ord("W"))
{
	if keyboard_check(vk_right) or keyboard_check(ord("D")) {
		x += diag_xspeed;
		y -= diag_yspeed;
	} else if keyboard_check(vk_left) or keyboard_check(ord("A")) {
		x -= diag_xspeed;
		y -= diag_yspeed;
	} else if not (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
		y -= yspeed;
	}

} else if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	if keyboard_check(vk_right) or keyboard_check(ord("D")) {
		x += diag_xspeed;
		y += diag_yspeed;
	} else if keyboard_check(vk_left) or keyboard_check(ord("A")) {
		x -= diag_xspeed;
		y += diag_yspeed;
	} else if not (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
		y += yspeed;
	}
} else if keyboard_check(vk_left) or keyboard_check(ord("A")) {
	if not(keyboard_check(vk_right) or keyboard_check(ord("D"))) {
		x -= xspeed;
	}
} else if keyboard_check(vk_right) or keyboard_check(ord("D")) {
	if not(keyboard_check(vk_left) or keyboard_check(ord("A"))) {
		x += xspeed;
	}
}