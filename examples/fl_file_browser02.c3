import fl;
import std::io;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,320,200,"fl_file_browser02");
        Fl_File_Browser* fbr=fl::file_browser_new(10,10,320-20,200-20,null);
        fbr.set_type(Fl_BrowserType.FL_BROWSERTYPE_HOLD);
        fbr.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_VERTICAL);
        fbr.load_file(".");
        fbr.set_callback(&file_browser_cb,fbr);

    win.show();
    fl::run();
}
fn void file_browser_cb(Fl_Widget* obj,void* data)
{
    Fl_File_Browser* fbr=(Fl_File_Browser*)obj;
    int index=fbr.value();
    io::printn(fbr.text(index));
}