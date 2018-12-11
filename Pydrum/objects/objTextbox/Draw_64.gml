/// @description Draw GUI and Controls

//Drawing header & footer
header();
footer();

//Drawing title
draw_set_font(fontTitle);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_colour(16, 18, string_hash_to_newline(roomTitle), ui_white, ui_white, ui_white, ui_white, 1);

//Drawing all controls
ui_draw_all();

