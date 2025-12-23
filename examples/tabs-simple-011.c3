import fl;

fn void main()
{
    fl::set_scheme("plastic");

    Fl_Window* win=fl::window_new(100,100,500,200,"011-Tabs-Simple");
        Fl_Tabs* tabs=fl::tabs_new(10,10,500-20,200-40);
        tabs.set_label("");
            Fl_Group* groupA=fl::group_new(10,35,500-20,200-55,"Group A");
                Fl_Button* b1=fl::button_new(50,60,90,25,"Button A1");
                b1.set_color(Fl_Color.FL_COLOR_DARKGREEN);
                Fl_Button* b2=fl::button_new(50,90,90,25,"Button A2");
                b2.set_color(Fl_Color.FL_COLOR_MAGENTA);
                Fl_Button* b3=fl::button_new(50,120,90,25,"Button A3");
                b3.set_color(Fl_Color.FL_COLOR_DARKCYAN);
            groupA.end();

            Fl_Group* groupB=fl::group_new(10,35,500-20,200-55,"Group B");
                Fl_Button* b4=fl::button_new(50,60,90,25,"Button B1");
                b4.set_color(88+1);
                Fl_Button* b5=fl::button_new(150,60,90,25,"Button B2");
                b5.set_color(88+3);
                Fl_Button* b6=fl::button_new(250,60,90,25,"Button B3");
                b6.set_color(88+5);
                Fl_Button* b7=fl::button_new(50,90,90,25,"Button B4");
                b7.set_color(88+2);
                Fl_Button* b8=fl::button_new(150,90,90,25,"Button B5");
                b8.set_color(88+4);
                Fl_Button* b9=fl::button_new(250,90,90,25,"Button B6");
                b9.set_color(88+6);
            groupB.end();
        tabs.end();
    win.end();
    win.show();

    fl::run();
}