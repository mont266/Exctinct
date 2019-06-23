//// @description Player Engine
#region Key Bindings
keyup		= keyboard_check(ord("W"));
keyleft		= keyboard_check(ord("A"));
keydown		= keyboard_check(ord("S"));
keyright	= keyboard_check(ord("D"));
sprint		= keyboard_check(vk_lshift);
shoot		= mouse_check_button_pressed(mb_left);
shootAK		= mouse_check_button(mb_left);
glockSelect = keyboard_check_pressed(ord("1"));
ak47Select	= keyboard_check_pressed(ord("2"));
#endregion
#region Sprite Change
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
#endregion
#region Movement Engine
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
#endregion
#region Shooting Engine

if (glockPickedUp == true && glockSelect) {
	gunSelected = "handgun";
}

if (ak47PickedUp == true && ak47Select) {
	gunSelected = "ak47";
}

if (gunSelected == "handgun") {
	if (glockammo > 0 and shoot) {
			with (instance_create_depth(obj_player.x, obj_player.y,-1000,obj_bullet)) {
			speed = 35;
			direction = point_direction(x, y, mouse_x, mouse_y);
		}
		audio_play_sound(snd_glock,10,false);
		glockammo -= 1;
		}
}

if (gunSelected == "ak47") {
	if (ak47ammo > 0 and shootAK) {
			with (instance_create_depth(obj_player.x, obj_player.y,-1000,obj_bullet)) {
			speed = 35;
			direction = point_direction(x, y, mouse_x, mouse_y);
		}
		audio_play_sound(snd_glock,10,false);
		ak47ammo -= 1;
	}
}

if (glockammo <= 0 and shoot) {
		audio_play_sound(snd_noAmmo,10,false);
}

if (ak47ammo <= 0 and shoot) {
		audio_play_sound(snd_noAmmo,10,false);
}


if (gunSelected == "none") {
		holdingGun = false;
  } else {
	holdingGun = true;	
}

if ak47ammo <= 0 {
	ak47ammo = 0;	
}

if glockammo <= 0 {
	glockammo = 0;	
}
#endregion
#region Cursour Engine
if (holdingGun == true) {
		cursor_sprite = spr_gunCursour;
} else {
	cursor_sprite = spr_defaultCursor;
}
#endregion