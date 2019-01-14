/// @function additem
/// @desc Add item ti a grid
/// @argument0 DSGrid_To_Add
/// @argument1 Item_Name
/// @argument2 Item_Amount
/// @argument3 Item_Description
/// @argument4 Item_Sprite
/// @argument5 Item_Script

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//Case 1  - Item is already in the inventory
for(i = 0; i < ds_grid_height(gridToAddTo); ++i)
{
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName) {
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
		return true;
	}
	
}
//Case 2 It's not already in the inventory
if(ds_grid_get(gridToAddTo, 0, 0) != 0)
{
	ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
}

newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);

return true;