import fl;
import std::io;

fn void main()
{
    fl::register_images();
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"fl_help_view02");
        Fl_Help_View* hv=fl::help_view_new(10,10,620,460,null);
            hv.load("media/test01.html");
            win.resizable(hv);

        win.end();

    win.show();

    fl::run(); 
}
