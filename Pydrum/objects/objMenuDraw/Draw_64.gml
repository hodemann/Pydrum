
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(make_color_rgb(84,55,64));
draw_set_font(INFECTED)


draw_text(room_width/2, room_height/3,"Pydrum")
if !audio_is_playing(mscMenu) audio_play_sound(mscMenu, 1, false)

draw_set_font(BornSporty)
