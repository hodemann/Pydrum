/// @description Helpful Ticks
//Updates the inventory when it is no longer empty
if(ds_grid_get(myItems, 0, 0) != 0) {
	isEmpty = false;
	inventoryEndAt = ds_grid_height(myItems);
	if(ds_grid_height(myItems) >= floor((sprite_height - (textBorder * 3)) / 32))
		inventoryEndAt = floor((sprite_height - (textBorder * 3)) / 32);
}
//When removing last item from inventory, doesn't allow player to appear
if(ds_grid_get(myItems, 0, 0) == 0) {
	isEmpty = true;
	inventoryEndAt = 0;
}