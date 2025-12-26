import fl;

fn void main()
{
    //fl::load_system_icons();
    Fl_Double_Window* win=fl::double_window_new(100,100,280,120,"fl_file_icon01");
        win.set_icon(fl::ico_image_new("sample.ico",0));
    win.show();

    fl::run();
}
