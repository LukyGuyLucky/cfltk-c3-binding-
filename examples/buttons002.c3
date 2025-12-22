import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(0,0,200,200,"002-Buttons");
        Fl_Button* button=fl::button_new(10,10,130,20,"FL_Button");
        Fl_Light_Button* lbutton=fl::light_button_new(10,50,130,20,"FL_Light_Button");
        Fl_Round_Button* rbutton=fl::round_button_new(10,90,130,20,"FL_Round_Button");

        //button.set_type(Fl_ButtonType.FL_BUTTONTYPE_NORMAL);
        //lbutton.set_type(Fl_ButtonType.FL_BUTTONTYPE_TOGGLE);
        //rbutton.set_type(Fl_ButtonType.FL_BUTTONTYPE_RADIO);

        win.end();
        win.show();

        fl::run();
}
