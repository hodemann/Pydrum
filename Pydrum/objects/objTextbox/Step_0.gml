with (other) {
///Change cursor on hover controls

if(ui_get_entered(textbox0) || ui_get_entered(textbox2) || ui_get_entered(textbox4) || ui_get_entered(textbox5) || ui_get_entered(textbox6) || ui_get_entered(textbox8) || ui_get_entered(textbox9))
{
    window_set_cursor(cr_beam);
}
else if(ui_get_entered(prevButton) || ui_get_entered(nextButton))
{
    window_set_cursor(cr_handpoint);
}
else
{
    window_set_cursor(cr_default);
}

}
///Control actions

if(ui_button_clicked(prevButton))
{
    room_goto_previous();
}

if(ui_button_clicked(nextButton))
{
    room_goto_next();
}

///Showing keyboard
if(os_type == os_android || os_type == os_ios || os_type == os_winphone || os_type == os_tizen)
{
  if(mouse_check_button_released(mb_left))
  {
    if(ui_get_focus(textbox0) || ui_get_focus(textbox2) || ui_get_focus(textbox4) || ui_get_focus(textbox5) || ui_get_focus(textbox6) || ui_get_focus(textbox8) || ui_get_focus(textbox9))
    {
      ui_keyboard_show();
    }
  }
}

username = " "
if (ui_textbox_changed(textbox0)) {
	username = ui_get_text(textbox0);
}
if (username == "end") game_end();

