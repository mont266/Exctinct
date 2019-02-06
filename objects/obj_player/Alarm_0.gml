/// @description Hunger Timer
if (global.hunger <= 0) {
	global.hunger = 0;
	global.playerhealth -= 2;
	alarm[0] = room_speed * 5;
} else {
	global.hunger -= 1;	
	alarm[0] = room_speed * hungerspeed;
}