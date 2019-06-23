///@description Character Variables + Alarm Inits
facing = 0; //0 = Up, 1 = Down, 2 = Left, 3 = Right
glockammo = 0;
ak47ammo = 0;
overallammo = glockammo + ak47ammo;
playerspeed = 3;
hungerspeed = 30;
thirstSpeed = 15;
holdingGun = false;
gunSelected = "none";
glockPickedUp = true;
ak47PickedUp = true;
cursor_sprite = spr_defaultCursor;

//Alarms
alarm[0] = room_speed * hungerspeed;
alarm[1] = room_speed * thirstSpeed;

//Resize
image_xscale = 2;
image_yscale = 2;