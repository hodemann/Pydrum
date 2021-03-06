/// @description Initialize Variables
textBorder = 22; //The border of the sprite, how much to draw text in

myItems = playerInventory; //Shorter DS grid name
myColor = c_black; //Alter display color
//If the inventory is empty. Totally optional
isEmpty = false;
emptyMessage = "You've no items.";

globalvar itemSelected, scrolledAmount, inventoryEndAt; //We'll need this in several functions & other objects
itemSelected = 0; //The currently selected item from the list
inventoryOnScreen = 0; 
inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder * 3)) / 32)); //How many items to display in the list. Either the amount of items in the list, or the amount that will fit in the sprite.
if(ds_grid_get(myItems, 0, 0) == 0) { //Checks to see if inventory is initially empty
	inventoryEndAt = 0;
	isEmpty = true;
}
scrolledAmount = 0; //How far down the list we've looked

alarm[0] = 1; //See alarm for details