/// @description Inventory Init
depth = -1;
scale = 2;
cell_size = 32;
show_inventory = false;
spr_inv_UI = spr_inventory;
spr_inv_items = spr_inventoryItems;
spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_slots = 21;
inv_slots_width = 7;
inv_slots_height = 3;

x_buffer = 5;
y_buffer = 6;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_width = 293;
inv_UI_height = 192;


inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

slots_x = inv_UI_x + (20 * scale);
slots_y = inv_UI_y + (20 * scale) + (40 * scale);

//-------------Inventory
//0 = ITEM
//1 = QUANTITY

ds_inventory = ds_grid_create(2,inv_slots);

//---------Items
enum item {
	none		= 0,
	apple		= 1,
	banana		= 2,
	first_aid	= 3,
	pizza		= 4,
	burger		= 5,
	sandwhich	= 6,
	key			= 7,
	master_key	= 8,
	height		= 17,
	
}

ds_inventory[# 0, 0] = item.first_aid;
ds_inventory[# 1, 0] = 1;

var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = irandom_range(1, item.height - 1);
	ds_inventory[# 1, yy] = irandom_range(1, 10);
	
	yy += 1;
}