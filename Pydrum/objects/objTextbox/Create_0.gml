/// @description Initialize variable

roomTitle = "Hanif Flat UI";
subTitle = "Textbox";

///Instance controls

//Normal textbox
textbox0 = ui_textbox_create(32, 192, 576, ui_default, "textbox0");
ui_set_foreground_colour(textbox0, ui_grey);

//Normal disabled textbox
textbox1 = ui_textbox_create(672, 192, 576, ui_default, "Disabled textbox");
ui_set_foreground_colour(textbox1, ui_grey);
ui_set_enable(textbox1, false);

//Filled textbox
textbox2 = ui_textbox_create(32, 288, 576, ui_default, "Filled textbox");
ui_set_foreground_colour(textbox2, ui_grey);
ui_set_text(textbox2, "My first text");

//Filled disabled textbox
textbox3 = ui_textbox_create(672, 288, 576, ui_default, "Filled disabled textbox");
ui_set_foreground_colour(textbox3, ui_grey);
ui_set_enable(textbox3, false);
ui_set_text(textbox3, "My first text");

//Accepts only number
textbox4 = ui_textbox_create(32, 384, 576, ui_default, "Accepts only number");
ui_set_foreground_colour(textbox4, ui_grey);
ui_textbox_set_acceptable(textbox4, ui_number_only);

//Accepts only letters
textbox5 = ui_textbox_create(672, 384, 576, ui_default, "Accepts only letters");
ui_set_foreground_colour(textbox5, ui_grey);
ui_textbox_set_acceptable(textbox5, ui_letter_only);

//Password field
textbox6 = ui_textbox_create(32, 480, 576, ui_default, "Password field");
ui_set_foreground_colour(textbox6, ui_grey);
ui_textbox_set_password(textbox6, true);

//Disabled password field
textbox7 = ui_textbox_create(672, 480, 576, ui_default, "Disabled password field");
ui_set_foreground_colour(textbox7, ui_grey);
ui_textbox_set_password(textbox7, true);
ui_set_text(textbox7, "mYpAsSwoRdZ");
ui_set_enable(textbox7, false);

//Limited input textbox
textbox8 = ui_textbox_create(32, 576, 288, ui_default, "Limited input textbox");
ui_set_foreground_colour(textbox8, ui_grey);
ui_textbox_set_maxchar(textbox8, 20);

//Coloured textbox
textbox9 = ui_textbox_create(384, 576, 864, ui_default, "Coloured textbox");
ui_set_foreground_colour(textbox9, ui_blue_grey);
ui_set_background_colour(textbox9, ui_deep_orange);

///Create footer button

//Create a button handler
prevButton = ui_button_create(room_width - 288, room_height - 50, 128, 38, "PREVIOUS");


//Create a button handler
nextButton = ui_button_create(room_width - 144, room_height - 50, 128, 38, "NEXT");


