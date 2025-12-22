import fl;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,300,125,"007-input");
        Fl_Input* sInput=fl::input_new(70,50,160,35,"Input:");
        Fl_Button* button=fl::button_new(70,10,160,35,"Change text");
        Callback cb=&rename_it;
        button.set_callback(cb,sInput);
    win.end();
    win.resizable((Fl_Widget*)&button);
    win.resizable((Fl_Widget*)&sInput);
    win.show();

    fl::run();
}
fn int rename_me(Fl_Widget* w,int e,void* data)
{
    Fl_Input* s0=(Fl_Input*)data;
    w.set_label(s0.value());
    w.redraw();

    return 0;
}
fn void rename_it(Fl_Widget* w,void* data)
{
    Fl_Input* s0=(Fl_Input*)data;
    w.set_label(s0.value());
    w.redraw();
}