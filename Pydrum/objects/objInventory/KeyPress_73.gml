if(!instance_exists(objInventoryGUI)) {
	inventoryDisplay = instance_create_depth(0, 0, depth - 1,objInventoryGUI)
	with(inventoryDisplay) {
		x = sprite_get_xoffset(sprite_index);
		y = room_height - sprite_get_yoffset(sprite_index);
	}
}
else {
	instance_destroy(objInventoryGUI)
}