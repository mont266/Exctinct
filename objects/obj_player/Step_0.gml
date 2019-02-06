//// @description Movement Engine
keyup		= keyboard_check(ord("W"));
keyleft		= keyboard_check(ord("A"));
keydown		= keyboard_check(ord("S"));
keyright	= keyboard_check(ord("D"));
sprint		= keyboard_check(vk_lshift);
shoot		= mouse_check_button_pressed(mb_left);

////Sprite Change//
if (facing = 0) {
	sprite_index = spr_player_up;
}
if (facing = 1) {
	sprite_index = spr_player_down;
}
if (facing = 2) {
	sprite_index = spr_player_left;
}
if (facing = 3) {
	sprite_index = spr_player_right;
}
////End//
////Movement//
if (keyup) {
	y -= playerspeed;
	facing = 0;
}
if (keyleft) {
	x -= playerspeed;
	facing = 2;
}
if (keydown) {
	y += playerspeed;
	facing = 1;
}
if (keyright) {
	x += playerspeed;
	facing = 3;
}

//Sprinting
if (sprint) {
	playerspeed = 5;
	image_speed = 4;
} else {
	playerspeed = 3;
	image_speed = 1;
}

//Idle
if (keyboard_check(vk_nokey)) {
		image_speed = 0;
		image_index = 0;
}
else {
	image_speed = 1;	
}
////End//
//Shoot//
if (global.ammo > 0 && shoot) {
	with (instance_create_depth(obj_player.x, obj_player.y,-1000,obj_bullet)) {
		speed = 35;
		direction = point_direction(x, y, mouse_x, mouse_y);
	}
	audio_play_sound(snd_glock,10,false);
	global.ammo -= 1;
}

if (global.ammo <= 0 && shoot) {
	audio_play_sound(snd_noAmmo,10,false);
}

if (global.ammo <= 0) {
	global.ammo = 0;
	holdingGun = false;
} else {
	holdingGun = true;	
}
//End//
//Cursor Engine//
if (holdingGun == true) {
		cursor_sprite = spr_gunCursour;
} else {
	cursor_sprite = spr_defaultCursor;
}
//End//