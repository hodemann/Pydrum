draw_self();
draw_set_color(myColor);
draw_set_halign(fa_left);
draw_set_valign(fa_top)
draw_set_font(King);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 125, bbox_top + textBorder, "Name");
draw_text(bbox_left + 225, bbox_top + textBorder, "Amount");

itemLeftStart = bbox_left + 120;
itemTopStart = bbox_top + 48;


for(i = 0; i < inventoryEndAt; ++i) {
	for(j = 0; j < ds_grid_width(myItems); ++j) {
		inventoryOnScreen = i; //Be able to track what value i is outside of the for loop
		if(j == 0) //Draw the name in the right spot
			draw_text(itemLeftStart, itemTopStart + (i * 32 + 5), ds_grid_get(myItems, 0, i + scrolledAmount));
		else if(j == 1) //Draw amount in the right spot
			draw_text(itemLeftStart + 140, itemTopStart + (i * 32 + 5), ds_grid_get(myItems, 1, i + scrolledAmount));
		else if(j == 3) //Draw sprite in the right spt
			draw_sprite(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_left + 40, itemTopStart + (i * 32) + 16);
	}
}

draw_rectangle(bbox_left + textBorder, itemTopStart + ((itemSelected - scrolledAmount) 
* 32), bbox_right - textBorder, itemTopStart + ((itemSelected - scrolledAmount) * 32) 
+ 32, true);


draw_sprite(sprItemBox1, 0, bbox_right + sprite_get_xoffset(sprItemBox1), room_height - sprite_get_yoffset(sprItemBox1));

if(isEmpty) 
	draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(sprItemBox1) - 100, emptyMessage, 32, sprite_get_width(sprItemBox1) - textBorder);
else
	draw_text_ext(bbox_right + 15, room_height - sprite_get_yoffset(sprItemBox1) - 100, ds_grid_get(myItems,2,itemSelected), 32, sprite_get_width(sprItemBox1) - textBorder);

//Draw scrollbar
if(ds_grid_height(myItems) > floor((sprite_height - (textBorder * 3)) / 32)) {
	draw_sprite(sprSCRLBAR, 0, bbox_right, 20 + bbox_top + itemSelected * (sprite_height - textBorder) / ds_grid_height(myItems));
}