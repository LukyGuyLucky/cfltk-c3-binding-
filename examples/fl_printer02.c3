import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,320,240,"Fl_printer02");
        var btn @safeinfer=fl::button_new(10,10,300,220,"print window");
        btn.set_callback(&click_cb,null);
    win.show();
    fl::run();
}
fn void click_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* win=(Fl_Window*)obj;
    var prt @safeinfer=fl::printer_new();
    if(prt)
    {
        if(prt.begin_job(1,null,null,{})==0)
        {
            if(prt.begin_page()==0)
            {
                prt.print_window(win,0,0);
                prt.end_page();
            }
            else
            {
                fl::beep(Fl_BeepType.FL_BEEPTYPE_NOTIFICATION);
                io::printn("fl::printer_begin_job() canceled.");
            }
            prt.end_job();
        }else
        {
            fl::beep(Fl_BeepType.FL_BEEPTYPE_ERROR);
            io::printn("fl::printer_begin_job() failed.");
        }
        prt.delete();
    }
    else
    {
        fl::beep(Fl_BeepType.FL_BEEPTYPE_ERROR);
        io::printn("fl::printer_new() failed");
    }
}