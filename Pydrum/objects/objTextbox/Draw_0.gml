/// @description Draw instance elements

//Draw subtitle
draw_set_font(fontHuge);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_text_colour(room_width / 2, 100, string_hash_to_newline(subTitle), ui_grey, ui_grey, ui_grey, ui_grey, 1);

//Draw limited number
draw_set_font(fontSmall);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_colour(32, 620, string_hash_to_newline("Character(s) left: " + string(20 - string_length(ui_get_text(textbox8)))), ui_grey, ui_grey, ui_grey, ui_grey, 1);

