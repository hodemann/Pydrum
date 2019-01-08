draw_self()


draw_text(100, 100,timer)
if gameover {
	
	
	draw_set_halign(fa_middle)
	draw_set_color(make_color_rgb(37,19,26));
	
	draw_rectangle(room_width/2-100,room_height/3-50,room_width/2+100,room_height/2+50, false);

	draw_set_color(c_white)

	
	draw_text(room_width/2,room_height/3,"Game Over")
	draw_text(room_width/2,room_height/2-50,"Din poengsum: " + string(timer))
	draw_text(room_width/2,room_height/2,alarm[0])

	x = xstart
	y = ystart

	with objEnemy {
		x = xstart
		y = ystart
	}
}
 
 
