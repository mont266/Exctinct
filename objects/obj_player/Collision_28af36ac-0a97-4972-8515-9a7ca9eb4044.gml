/// @description Gun pickup
if (keyboard_check_pressed(vk_enter)) {
	ak47ammo += irandom_range(1, 60);
	audio_play_sound(snd_gunPickup,10,false);
	instance_destroy(other);
}