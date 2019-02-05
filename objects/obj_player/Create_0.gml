///@description Character Variables + Alarm Inits
facing = 0; //0 = Up, 1 = Down, 2 = Left, 3 = Right
playerspeed = 5;
hungerspeed = 30;
thirstSpeed = 15;
holdingGun = false;
cursor_sprite = spr_defaultCursor;

//Alarms
alarm[0] = room_speed * hungerspeed;
alarm[1] = room_speed * thirstSpeed;