/// @function addItem
/// @description Add an item to a grid
/// @argument0 DSGrid Grid_To_Add
/// @argument1 String Item_Name
/// @argument2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//Increases the amount of that item if it's already in the inventory
for(i = 0; i < ds_grid_height(gridToAddTo); ++i) {
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName) {
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
		return true;
	}
}
//Increase ds grid size by 1
if(ds_grid_get(gridToAddTo, 0, 0) != 0) //Required, since when creating the DS grid, it has a size of 1 already
	ds_grid_resize(gridToAddTo, 5, ds_grid_height(gridToAddTo) + 1);

//Adds it to the inventory if it's unique
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);

return true;
