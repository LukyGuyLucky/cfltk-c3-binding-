import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,640,146,"fl_text_dnd01");
        Fl_Input* inp1=fl::input_new(10,10,620,24,null);
        inp1.set_value("drag and drop text to the other text field.");
        Fl_Input* inp2=fl::input_new(10,44,620,24,null);
        Fl_Radio_Button* btn1=fl::radio_button_new(10,78,620,24,"Disable DND [fl::set_option(2,0)]");
        btn1.set_callback(&disable_cb,inp2);

        Fl_Radio_Button* btn2=fl::radio_button_new(10,112,620,24,"Enable DND [fl::set_option(2,1)]");
        btn2.set_callback(&enable_cb,inp2);

    win.show();

    fl::run();
}

fn void enable_cb(Fl_Widget* obj,void* data)
{
    fl::set_option(2,1);
}
fn void disable_cb(Fl_Widget* obj,void* data)
{
    fl::set_option(2,0);
}