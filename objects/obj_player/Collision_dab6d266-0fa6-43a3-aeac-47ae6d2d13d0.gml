/// @description Gun pickup
if (keyboard_check_pressed(vk_enter)) {
	glockammo += irandom_range(1, 12);
	audio_play_sound(snd_gunPickup,10,false);
	instance_destroy(other);
}