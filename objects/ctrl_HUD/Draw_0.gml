/// @description HUD Draw
var cam = view_camera[view_current];

var vx = camera_get_view_x(cam);
var vy = camera_get_view_y(cam);
var vw = camera_get_view_width(cam);
var vh = camera_get_view_height(cam);

draw_healthbar(vx+32,vy+32,vx+256,vy+50,global.playerhealth,c_black,c_red,c_green,0,false,true);
draw_healthbar(vx+32,vy+52,vx+256,vy+66,global.hunger,c_black,c_red,c_orange,0,true,true);
draw_healthbar(vx+32,vy+68,vx+256,vy+80,global.thirst,c_black,c_blue,c_blue,0,true,true);

draw_set_font(fnt_ammo);
draw_text(vx+1885, vy+1045, global.ammo);