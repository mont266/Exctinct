/// @description HUD Draw
var cam = view_camera[view_current];

var vx = camera_get_view_x(cam);
var vy = camera_get_view_y(cam);
var vw = camera_get_view_width(cam);
var vh = camera_get_view_height(cam);

draw_sprite(spr_healthHUD,image_index,vx+0,vy+960);
draw_sprite(spr_hungerHUD,image_index,vx+0,vy+992);
draw_sprite(spr_thirstHUD,image_index,vx+0,vy+1024);
draw_healthbar(vx+40,vy+960,vx+415,vy+990,global.playerhealth,c_black,c_red,c_green,0,false,true);
draw_healthbar(vx+40,vy+992,vx+415,vy+1022,global.hunger,c_black,c_red,c_orange,0,true,true);
draw_healthbar(vx+40,vy+1024,vx+415,vy+1056,global.thirst,c_black,c_blue,c_blue,0,true,true);
draw_set_font(fnt_HUD);
draw_text(vx+200,vy+965,string(global.playerhealth) + " / 100");
draw_text(vx+200,vy+997,string(global.hunger) + " / 100");
draw_text(vx+200,vy+1029,string(global.thirst) + " / 100");

draw_set_font(fnt_ammo);
draw_text(vx+1885, vy+1045, global.ammo);