/// @description Insert description here
// You can write your code in this editor
if other.bbox_bottom < self.bbox_bottom {
	self.image_alpha = 0.5;
	alarm_set(0, 1);
	self.depth = other.depth - 1
} else {
	self.depth = other.depth + 1
}

if keyboard_check(ord("E")) and global.door_cooldown == 0 {
	room_goto(goto_room);
	Player.x = player_pos[0];
	Player.y = player_pos[1];
	global.door_cooldown = 1;
	global_setup.alarm[0] = 30;

}