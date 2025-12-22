import fl;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,200,105,"006-callbacks");
        Fl_Button* button=fl::button_new(20,10,160,35,"Test text");
        Callback cb=&rename_me;
        button.set_callback(cb,null);
    win.end();
    win.resizable((Fl_Widget*)&button);
    win.show();

    fl::run();
}
fn void rename_me(Fl_Widget* win,void* data)
{
    win.set_label("Renamed");
    win.redraw();


}