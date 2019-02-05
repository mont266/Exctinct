/// @description Thirst Timer
if (global.thirst <= 0) {
	global.thirst = 0;
	global.playerhealth -= 1;
	alarm[1] = room_speed * 5;
}
else {
	global.thirst -= 1;	
	alarm[1] = room_speed * thirstSpeed;
}